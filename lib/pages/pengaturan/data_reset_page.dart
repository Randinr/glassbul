import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';
import '../../widgets/components/custom_button.dart';

class DataResetPage extends StatelessWidget {
  const DataResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Data & Reset",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Hapus semua data dan reset sistem ke awal."),
          const SizedBox(height: 20),
          CustomButton(text: "Reset Data", onPressed: () {}, color: Colors.red),
        ],
      ),
    );
  }
}
