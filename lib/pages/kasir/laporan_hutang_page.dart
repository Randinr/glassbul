import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../widgets/layout/main_layout.dart';
import '../../services/hutang_service.dart';
import '../../widgets/components/custom_button.dart';

class LaporanHutangPage extends StatelessWidget {
  const LaporanHutangPage({super.key});

  @override
  Widget build(BuildContext context) {
    final service = HutangService();

    return MainLayout(
      title: "Laporan Hutang Pelanggan",
      child: StreamBuilder(
        stream: service.streamHutang(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
          final data = snapshot.data!;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (ctx, i) {
              final h = data[i];
              return Card(
                color: Colors.grey[850],
                child: ListTile(
                  title: Text("Hutang: Rp ${h.jumlah.toStringAsFixed(0)}",
                      style: const TextStyle(color: Colors.white)),
                  subtitle: Text("Status: ${h.lunas ? 'Lunas' : 'Belum Lunas'}",
                      style: const TextStyle(color: Colors.white70)),
                  trailing: !h.lunas
                      ? CustomButton(
                          text: "Lunas",
                          color: Colors.green,
                          onPressed: () => service.tandaiLunas(h.id),
                        )
                      : null,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
