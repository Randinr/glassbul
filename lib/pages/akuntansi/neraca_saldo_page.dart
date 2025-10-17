import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class NeracaSaldoPage extends StatelessWidget {
  const NeracaSaldoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Neraca Saldo Penutupan",
      child: Center(child: Text("Saldo akhir semua akun setelah tutup buku.")),
    );
  }
}
