import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class LaporanStokPage extends StatelessWidget {
  const LaporanStokPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Laporan Stok",
      child: Center(child: Text("Rekap persediaan dan mutasi stok.")),
    );
  }
}
