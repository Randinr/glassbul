import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class StokMenipisPage extends StatelessWidget {
  const StokMenipisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Stok Menipis",
      child: Center(child: Text("Daftar produk dengan stok hampir habis.")),
    );
  }
}
