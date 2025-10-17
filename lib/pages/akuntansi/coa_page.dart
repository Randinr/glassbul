import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class CoaPage extends StatelessWidget {
  const CoaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Bagan Akun (COA)",
      child: Center(child: Text("Daftar seluruh akun akuntansi yang digunakan di sistem.")),
    );
  }
}
