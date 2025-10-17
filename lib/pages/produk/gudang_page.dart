import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class GudangPage extends StatelessWidget {
  const GudangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Gudang",
      child: Center(child: Text("Daftar dan lokasi gudang penyimpanan barang.")),
    );
  }
}
