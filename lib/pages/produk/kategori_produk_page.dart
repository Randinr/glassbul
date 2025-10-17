import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';
import '../../widgets/components/custom_button.dart';

class KategoriProdukPage extends StatelessWidget {
  const KategoriProdukPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Kategori Produk",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Kelola kategori produk."),
          const SizedBox(height: 20),
          CustomButton(text: "Tambah Kategori", onPressed: () {}),
        ],
      ),
    );
  }
}
