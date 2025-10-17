import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class TemaTampilanPage extends StatelessWidget {
  const TemaTampilanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Tema & Tampilan",
      child: Center(child: Text("Atur tema gelap, warna utama, dan tampilan antarmuka.")),
    );
  }
}
