import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class JurnalUmumPage extends StatelessWidget {
  const JurnalUmumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Jurnal Umum",
      child: Center(child: Text("Semua transaksi akuntansi yang dicatat otomatis maupun manual.")),
    );
  }
}
