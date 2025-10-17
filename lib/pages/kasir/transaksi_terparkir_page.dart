import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class TransaksiTerparkirPage extends StatelessWidget {
  const TransaksiTerparkirPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Transaksi Terparkir",
      child: Center(child: Text("Daftar transaksi yang disimpan sementara.")),
    );
  }
}
