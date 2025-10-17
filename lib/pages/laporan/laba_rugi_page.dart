import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class LabaRugiPage extends StatelessWidget {
  const LabaRugiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Laporan Laba Rugi",
      child: Center(child: Text("Hitung pendapatan, HPP, dan laba bersih periode berjalan.")),
    );
  }
}
