import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class FakturPemasokPage extends StatelessWidget {
  const FakturPemasokPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Faktur Pemasok",
      child: Center(child: Text("Daftar tagihan yang diterima dari pemasok.")),
    );
  }
}
