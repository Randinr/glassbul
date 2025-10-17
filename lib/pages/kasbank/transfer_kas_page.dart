import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';
import '../../widgets/components/custom_button.dart';
import '../../services/kasbank_service.dart';

class TransferKasPage extends StatelessWidget {
  const TransferKasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final service = KasBankService();

    return MainLayout(
      title: "Transfer Antar Kas",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Pindahkan dana antar rekening kas dan bank."),
          const SizedBox(height: 20),
          CustomButton(
            text: "Transfer Rp 500.000 ke Bank",
            color: Colors.blue,
            onPressed: () => service.transferKas("Kas Utama", "Bank Mandiri", 500000),
          ),
        ],
      ),
    );
  }
}
