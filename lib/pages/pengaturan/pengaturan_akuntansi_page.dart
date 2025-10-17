import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class PengaturanAkuntansiPage extends StatelessWidget {
  const PengaturanAkuntansiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Pengaturan Akuntansi",
      child: Center(child: Text("Kebijakan akuntansi dan periode laporan keuangan.")),
    );
  }
}
