import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../widgets/layout/main_layout.dart';
import '../../services/piutang_service.dart';
import '../../widgets/components/custom_button.dart';

class PiutangUsahaPage extends StatelessWidget {
  const PiutangUsahaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final service = PiutangService();

    return MainLayout(
      title: "Piutang Usaha",
      child: StreamBuilder<QuerySnapshot>(
        stream: service.streamPiutang(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
          final docs = snapshot.data!.docs;
          return ListView(
            children: docs.map((d) {
              final data = d.data() as Map<String, dynamic>;
              return Card(
                color: Colors.grey[850],
                child: ListTile(
                  title: Text("Rp ${data['jumlah']}", style: const TextStyle(color: Colors.white)),
                  subtitle: Text(data['lunas'] ? "Lunas" : "Belum Lunas",
                      style: const TextStyle(color: Colors.white70)),
                  trailing: !data['lunas']
                      ? CustomButton(
                          text: "Tandai Lunas",
                          color: Colors.green,
                          onPressed: () => service.tandaiLunas(d.id),
                        )
                      : null,
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
