import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class LaporanPenjualanPage extends StatelessWidget {
  const LaporanPenjualanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Laporan Penjualan",
      child: Center(child: Text("Rekap penjualan harian, mingguan, bulanan.")),
    );
  }
}
