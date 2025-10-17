import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';
import '../../widgets/components/custom_button.dart';

class ImportMarketplacePage extends StatelessWidget {
  const ImportMarketplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Import Marketplace",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Unggah file CSV dari Shopee / Tokopedia"),
          const SizedBox(height: 20),
          CustomButton(text: "Import Sekarang", onPressed: () {}),
        ],
      ),
    );
  }
}
