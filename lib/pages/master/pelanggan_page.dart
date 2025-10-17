import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class PelangganPage extends StatelessWidget {
  const PelangganPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Pelanggan",
      child: Center(child: Text("Daftar pelanggan dan informasi kontak.")),
    );
  }
}
