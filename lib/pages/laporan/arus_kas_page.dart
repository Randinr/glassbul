import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class ArusKasPage extends StatelessWidget {
  const ArusKasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Laporan Arus Kas",
      child: Center(child: Text("Aliran kas masuk dan keluar perusahaan.")),
    );
  }
}
