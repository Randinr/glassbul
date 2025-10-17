import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';
import '../../widgets/components/custom_button.dart';

class PenerimaBarangPage extends StatelessWidget {
  const PenerimaBarangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Penerimaan Barang",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Catat penerimaan barang dari pemasok."),
          const SizedBox(height: 20),
          CustomButton(text: "Tambah Penerimaan", onPressed: () {}),
        ],
      ),
    );
  }
}
