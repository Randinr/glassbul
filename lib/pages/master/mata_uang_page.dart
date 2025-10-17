import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class MataUangPage extends StatelessWidget {
  const MataUangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Mata Uang",
      child: Center(child: Text("Daftar mata uang dan nilai tukar yang digunakan.")),
    );
  }
}
