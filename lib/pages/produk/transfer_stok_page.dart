import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';
import '../../widgets/components/custom_button.dart';

class TransferStokPage extends StatelessWidget {
  const TransferStokPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Transfer Stok",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Transfer stok antar gudang."),
          const SizedBox(height: 20),
          CustomButton(text: "Transfer Sekarang", onPressed: () {}),
        ],
      ),
    );
  }
}
