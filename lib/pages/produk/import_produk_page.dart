import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';
import '../../widgets/components/custom_button.dart';

class ImportProdukPage extends StatelessWidget {
  const ImportProdukPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Import Produk",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Upload file CSV untuk import data produk."),
          const SizedBox(height: 20),
          CustomButton(text: "Upload File", onPressed: () {}),
        ],
      ),
    );
  }
}
