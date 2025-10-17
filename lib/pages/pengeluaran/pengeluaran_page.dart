import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';
import '../../widgets/components/custom_button.dart';
import '../../services/kasbank_service.dart';

class PengeluaranPage extends StatelessWidget {
  const PengeluaranPage({super.key});

  @override
  Widget build(BuildContext context) {
    final service = KasBankService();

    return MainLayout(
      title: "Pengeluaran",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Catat semua pengeluaran operasional seperti listrik, gaji, transportasi."),
          const SizedBox(height: 20),
          CustomButton(
            text: "Tambah Pengeluaran",
            color: Colors.redAccent,
            onPressed: () => service.tambahKasKeluar("Beban Listrik", 250000),
          ),
        ],
      ),
    );
  }
}
