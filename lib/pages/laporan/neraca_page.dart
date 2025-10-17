import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class NeracaPage extends StatelessWidget {
  const NeracaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Neraca",
      child: Center(child: Text("Posisi aset, kewajiban, dan modal terkini.")),
    );
  }
}
