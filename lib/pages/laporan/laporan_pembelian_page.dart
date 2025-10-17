import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class LaporanPembelianPage extends StatelessWidget {
  const LaporanPembelianPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Laporan Pembelian",
      child: Center(child: Text("Rekap pembelian berdasarkan pemasok dan periode.")),
    );
  }
}
