import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class BukuBesarPage extends StatelessWidget {
  const BukuBesarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Buku Besar",
      child: Center(child: Text("Detail mutasi debit dan kredit tiap akun.")),
    );
  }
}
