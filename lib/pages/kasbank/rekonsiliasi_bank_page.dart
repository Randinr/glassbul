import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class RekonsiliasiBankPage extends StatelessWidget {
  const RekonsiliasiBankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Rekonsiliasi Bank",
      child: Center(child: Text("Cocokkan saldo buku kas dengan rekening bank.")),
    );
  }
}
