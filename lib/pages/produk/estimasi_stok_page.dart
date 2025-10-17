import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class EstimasiStokPage extends StatelessWidget {
  const EstimasiStokPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Estimasi Stok",
      child: Center(child: Text("Perkiraan stok berdasarkan tren penjualan.")),
    );
  }
}
