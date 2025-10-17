import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class ReturPenjualanPage extends StatelessWidget {
  const ReturPenjualanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Retur Penjualan",
      child: Center(child: Text("Daftar retur penjualan pelanggan.")),
    );
  }
}
