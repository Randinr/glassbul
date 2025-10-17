import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';
import '../../services/penjualan_service.dart';

class RiwayatPenjualanPage extends StatelessWidget {
  const RiwayatPenjualanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final service = PenjualanService();

    return MainLayout(
      title: "Riwayat Penjualan",
      child: StreamBuilder(
        stream: service.streamPenjualan(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
          final list = snapshot.data!;
          return ListView(
            children: list
                .map((trx) => ListTile(
                      title: Text("Transaksi: ${trx.id}", style: const TextStyle(color: Colors.white)),
                      subtitle: Text("Total: Rp ${trx.total}", style: const TextStyle(color: Colors.white70)),
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}
