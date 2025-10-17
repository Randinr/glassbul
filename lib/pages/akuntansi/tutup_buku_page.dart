import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';
import '../../widgets/components/custom_button.dart';

class TutupBukuPage extends StatelessWidget {
  const TutupBukuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Tutup Buku",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Proses penutupan periode akuntansi untuk menghitung laba bersih."),
          const SizedBox(height: 20),
          CustomButton(text: "Tutup Periode", onPressed: () {}),
        ],
      ),
    );
  }
}
