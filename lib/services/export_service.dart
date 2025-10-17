import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:excel/excel.dart';

class ExportService {
  final _db = FirebaseFirestore.instance;

  /// 🔹 Export semua pesanan Shopee menjadi file PDF
  Future<void> exportShopeeOrdersToPdf() async {
    final pdf = pw.Document();
    final ordersSnap = await _db.collection('penjualan').get();

    if (ordersSnap.docs.isEmpty) {
      throw Exception("Tidak ada data pesanan untuk diekspor.");
    }

    final orders = ordersSnap.docs.map((e) => e.data()).toList();
    final date = DateFormat('dd MMM yyyy, HH:mm').format(DateTime.now());

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (context) => [
          pw.Center(
            child: pw.Text(
              'Laporan Pesanan Shopee',
              style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold),
            ),
          ),
          pw.SizedBox(height: 5),
          pw.Center(
            child: pw.Text('Dibuat: $date', style: const pw.TextStyle(fontSize: 10)),
          ),
          pw.SizedBox(height: 10),

          pw.Table.fromTextArray(
            headers: [
              'No',
              'Tanggal',
              'Pembeli',
              'Produk',
              'Qty',
              'Harga',
              'Total',
              'Status'
            ],
            data: List.generate(orders.length, (i) {
              final o = orders[i];
              final total = (o['total'] ?? 0).toString();
              final tanggal = o['tanggal'] ?? '';
              final pembeli = o['pembeli'] ?? '-';
              final produk = o['produk'] ?? '-';
              final qty = o['qty']?.toString() ?? '0';
              final harga = o['harga']?.toString() ?? '0';
              final status = o['status'] ?? 'Selesai';
              return [
                (i + 1).toString(),
                tanggal,
                pembeli,
                produk,
                qty,
                harga,
                total,
                status,
              ];
            }),
            border: pw.TableBorder.all(width: 0.3),
            headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold),
            cellStyle: const pw.TextStyle(fontSize: 9),
            headerDecoration: const pw.BoxDecoration(color: PdfColors.grey300),
            cellAlignment: pw.Alignment.centerLeft,
          ),
          pw.SizedBox(height: 15),
          pw.Divider(),
          pw.Align(
            alignment: pw.Alignment.centerRight,
            child: pw.Text(
              'Total Pesanan: ${orders.length}',
              style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 12),
            ),
          ),
        ],
      ),
    );

    final dir = await getApplicationDocumentsDirectory();
    final file = File("${dir.path}/Laporan_Shopee.pdf");
    await file.writeAsBytes(await pdf.save());
    await OpenFile.open(file.path);
  }

  /// 🔹 Export data umum ke PDF
  Future<void> exportToPdf({
    required String title,
    required List<Map<String, dynamic>> data,
  }) async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (context) => [
          pw.Text(title, style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 15),
          pw.Table.fromTextArray(
            headers: data.isNotEmpty ? data.first.keys.toList() : [],
            data: data.map((row) => row.values.map((v) => v.toString()).toList()).toList(),
          ),
        ],
      ),
    );

    final dir = await getApplicationDocumentsDirectory();
    final file = File("${dir.path}/$title.pdf");
    await file.writeAsBytes(await pdf.save());
    await OpenFile.open(file.path);
  }

  /// 🔹 Export data umum ke Excel
  Future<void> exportToExcel({
    required String title,
    required List<Map<String, dynamic>> data,
  }) async {
    try {
      final excel = Excel.createExcel();
      final sheet = excel[title];

      if (data.isNotEmpty) {
        // Header
        sheet.appendRow(data.first.keys.cast<CellValue?>().toList());

        // Rows
        for (var row in data) {
          sheet.appendRow(row.values.map((v) => v.toString()).cast<CellValue?>().toList());
        }
      }

      final dir = await getApplicationDocumentsDirectory();
      final file = File("${dir.path}/$title.xlsx");
      await file.writeAsBytes(excel.encode()!);
      await OpenFile.open(file.path);

      print("✅ Export Excel berhasil: ${file.path}");
    } catch (e) {
      print("❌ Gagal export Excel: $e");
      rethrow;
    }
  }
}
