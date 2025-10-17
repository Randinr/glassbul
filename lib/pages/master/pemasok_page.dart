import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class PemasokPage extends StatelessWidget {
  const PemasokPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Pemasok",
      child: Center(child: Text("Daftar pemasok barang dan jasa.")),
    );
  }
}
