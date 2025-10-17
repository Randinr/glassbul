import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class PesananPembelianPage extends StatelessWidget {
  const PesananPembelianPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Pesanan Pembelian",
      child: Center(child: Text("Daftar PO (Purchase Order) yang dibuat.")),
    );
  }
}
