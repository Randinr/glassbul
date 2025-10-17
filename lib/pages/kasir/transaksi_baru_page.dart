import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';
import '../../widgets/components/custom_button.dart';
import '../../services/firestore_service.dart';
import '../../core/helpers.dart';

class TransaksiBaruPage extends StatefulWidget {
  const TransaksiBaruPage({super.key});

  @override
  State<TransaksiBaruPage> createState() => _TransaksiBaruPageState();
}

class _TransaksiBaruPageState extends State<TransaksiBaruPage> {
  final _firestore = FirestoreService();
  double total = 0;

  void simpanTransaksi() async {
    final id = generateID("POS");
    await _firestore.addData("penjualan", {
      "id": id,
      "tanggal": DateTime.now().toIso8601String(),
      "total": total,
      "metodePembayaran": "Tunai",
    });
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Transaksi tersimpan ✅")));
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Transaksi Baru",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Form Transaksi Kasir", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Text("Total Belanja: Rp ${total.toStringAsFixed(0)}", style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 16),
          Row(
            children: [
              CustomButton(text: "Bayar & Simpan", onPressed: simpanTransaksi, color: Colors.green),
              const SizedBox(width: 10),
              CustomButton(text: "Hutang", onPressed: () {}, color: Colors.orange),
            ],
          ),
        ],
      ),
    );
  }
}
