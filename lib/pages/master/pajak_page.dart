import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class PajakPage extends StatelessWidget {
  const PajakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Pajak",
      child: Center(child: Text("Pengaturan tarif dan jenis pajak transaksi.")),
    );
  }
}
