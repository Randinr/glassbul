import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class ReturPembelianPage extends StatelessWidget {
  const ReturPembelianPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Return Pembelian",
      child: Center(child: Text("Retur barang yang dikembalikan ke pemasok.")),
    );
  }
}
