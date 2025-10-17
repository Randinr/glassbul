import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';
import '../../widgets/components/custom_button.dart';
import '../../services/kasbank_service.dart';

class KasMasukPage extends StatelessWidget {
  const KasMasukPage({super.key});

  @override
  Widget build(BuildContext context) {
    final service = KasBankService();

    return MainLayout(
      title: "Kas Masuk",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Pencatatan kas masuk, seperti penjualan tunai atau setoran modal."),
          const SizedBox(height: 20),
          CustomButton(
            text: "Tambah Kas Masuk",
            color: Colors.green,
            onPressed: () => service.tambahKasMasuk("Setoran Modal", 1000000),
          ),
        ],
      ),
    );
  }
}
