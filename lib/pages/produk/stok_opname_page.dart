import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';
import '../../widgets/components/custom_button.dart';

class StokOpnamePage extends StatelessWidget {
  const StokOpnamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Stok Opname",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Lakukan pengecekan fisik terhadap stok barang."),
          const SizedBox(height: 20),
          CustomButton(text: "Mulai Opname", onPressed: () {}),
        ],
      ),
    );
  }
}
