import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class ReturKasirPage extends StatelessWidget {
  const ReturKasirPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Return Kasir",
      child: Center(child: Text("Form retur penjualan langsung dari kasir.")),
    );
  }
}
