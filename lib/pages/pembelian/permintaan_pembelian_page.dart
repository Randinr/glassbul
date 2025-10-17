import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';
import '../../widgets/components/custom_button.dart';

class PermintaanPembelianPage extends StatelessWidget {
  const PermintaanPembelianPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Permintaan Pembelian",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Buat permintaan pembelian barang dari gudang atau produksi."),
          const SizedBox(height: 20),
          CustomButton(text: "Tambah Permintaan", onPressed: () {}),
        ],
      ),
    );
  }
}
