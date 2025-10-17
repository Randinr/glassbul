import 'dart:io';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import '../../widgets/layout/main_layout.dart';
import '../../services/export_service.dart';
import '../../services/backup_service.dart';

class LaporanExportPage extends StatefulWidget {
  const LaporanExportPage({super.key});

  @override
  State<LaporanExportPage> createState() => _LaporanExportPageState();
}

class _LaporanExportPageState extends State<LaporanExportPage> {
  final _exportService = ExportService();
  final _backupService = BackupService();

  bool _busy = false;
  String? _error;

  Future<List<Map<String, dynamic>>> _getCollection(String name) async {
    final snap = await FirebaseFirestore.instance.collection(name).get();
    return snap.docs.map((d) => {...d.data(), 'id': d.id}).toList();
  }

  Future<void> _exportPdf(String title, String collection) async {
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final data = await _getCollection(collection);
      if (data.isEmpty) {
        _showSnack('Data kosong — tidak ada yang diekspor');
      } else {
        await _exportService.exportToPdf(title: _safeTitle(title), data: data);
        _showSnack('PDF berhasil dibuat');
      }
    } catch (e) {
      setState(() => _error = e.toString());
    } finally {
      setState(() => _busy = false);
    }
  }

  Future<void> _exportExcel(String title, String collection) async {
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final data = await _getCollection(collection);
      if (data.isEmpty) {
        _showSnack('Data kosong — tidak ada yang diekspor');
      } else {
        await _exportService.exportToExcel(title: _safeTitle(title), data: data);
        _showSnack('Excel berhasil dibuat');
      }
    } catch (e) {
      setState(() => _error = e.toString());
    } finally {
      setState(() => _busy = false);
    }
  }

  Future<void> _exportShopeePdf() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await _exportService.exportShopeeOrdersToPdf();
      _showSnack('Export Shopee berhasil dibuat!');
    } catch (e) {
      _showSnack('Gagal export Shopee: $e');
    } finally {
      setState(() => _busy = false);
    }
  }

  Future<void> _backupAll() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await _backupService.backupAll();
      _showSnack('Backup Firestore berhasil dibuat');
    } catch (e) {
      setState(() => _error = e.toString());
    } finally {
      setState(() => _busy = false);
    }
  }

  void _showSnack(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  String _safeTitle(String raw) {
    return raw.replaceAll(RegExp(r'[^\w\s-]'), '').replaceAll('  ', ' ').trim();
  }

  @override
  Widget build(BuildContext context) {
    final dateNow = DateFormat('dd MMM yyyy, HH:mm').format(DateTime.now());

    return MainLayout(
      title: "Export & Backup Data",
      child: AbsorbPointer(
        absorbing: _busy,
        child: Opacity(
          opacity: _busy ? 0.6 : 1,
          child: ListView(
            padding: const EdgeInsets.all(24),
            children: [
              const Text(
                "📦 Laporan & Export Data",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text("Diperbarui: $dateNow", style: const TextStyle(color: Colors.white70)),
              const SizedBox(height: 16),

              const Text("🧾 Export Laporan PDF", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),

              _exportButton(
                icon: Icons.picture_as_pdf_rounded,
                label: "Export Penjualan (PDF)",
                onPressed: () => _exportPdf("Laporan Penjualan", "penjualan"),
              ),
              _exportButton(
                icon: Icons.picture_as_pdf_rounded,
                label: "Export Pembelian (PDF)",
                onPressed: () => _exportPdf("Laporan Pembelian", "pembelian"),
              ),
              _exportButton(
                icon: Icons.picture_as_pdf_rounded,
                label: "Export Laba Rugi (PDF)",
                onPressed: () => _exportPdf("Laporan Laba Rugi", "jurnal"),
              ),

              const SizedBox(height: 20),
              const Text("📊 Export Excel", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),

              _exportButton(
                icon: Icons.table_chart_rounded,
                label: "Export Penjualan (Excel)",
                onPressed: () => _exportExcel("Laporan Penjualan", "penjualan"),
              ),
              _exportButton(
                icon: Icons.table_chart_rounded,
                label: "Export Pembelian (Excel)",
                onPressed: () => _exportExcel("Laporan Pembelian", "pembelian"),
              ),

              const SizedBox(height: 20),
              const Text("🛍️ Export Marketplace", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),

              _exportButton(
                icon: Icons.shopify_outlined,
                label: "Export Pesanan Shopee (PDF)",
                onPressed: _exportShopeePdf,
              ),

              const SizedBox(height: 28),
              const Divider(thickness: 1),
              const SizedBox(height: 8),

              const Text("☁️ Backup Firestore", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),

              _exportButton(
                icon: Icons.cloud_download_rounded,
                label: "Backup Semua Koleksi",
                onPressed: _backupAll,
              ),

              const SizedBox(height: 28),
              if (_busy) const Center(child: CircularProgressIndicator()),
              if (_error != null)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Error: $_error",
                    style: const TextStyle(color: Colors.redAccent),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _exportButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ElevatedButton.icon(
        icon: Icon(icon, size: 20),
        label: Text(label, style: const TextStyle(fontSize: 14)),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey[800],
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        ),
        onPressed: onPressed,
      ),
    );
  }
}

extension on ExportService {
  Future<void> exportToExcel({required String title, required List<Map<String, dynamic>> data}) async {}
}
