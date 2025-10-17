import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class CetakUlangStrukPage extends StatelessWidget {
  const CetakUlangStrukPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Cetak Ulang Struk",
      child: Center(child: Text("Pilih transaksi untuk cetak ulang struk.")),
    );
  }
}
