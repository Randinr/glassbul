import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';
import '../../widgets/components/custom_button.dart';

class BuatInvoicePage extends StatelessWidget {
  const BuatInvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Buat Invoice Penjualan",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Masukkan detail invoice pelanggan:"),
          const SizedBox(height: 20),
          CustomButton(text: "Simpan Invoice", onPressed: () {}),
        ],
      ),
    );
  }
}
