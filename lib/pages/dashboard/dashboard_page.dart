import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart'; // ✅ perbaikan import CombineLatestStream
import '../../widgets/layout/main_layout.dart';
import '../../widgets/components/custom_card.dart';
import '../../core/role_guard.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  /// 🔹 Stream total otomatis dari koleksi Firestore
  Stream<double> _totalStream(String collection) {
    return FirebaseFirestore.instance
        .collection(collection)
        .snapshots()
        .map((snap) {
      double total = 0;
      for (var doc in snap.docs) {
        final data = doc.data() as Map<String, dynamic>;
        total += (data['total'] ?? 0).toDouble();
      }
      return total;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RoleGuard(
      allowedRoles: const ['admin', 'owner', 'kasir'],
      child: MainLayout(
        title: "Dashboard Analitik",
        child: StreamBuilder<List<double>>(
          stream: CombineLatestStream.list([
            _totalStream('penjualan'),
            _totalStream('pembelian'),
            _totalStream('kasbank'),
          ]),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  'Terjadi kesalahan:\n${snapshot.error}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.red),
                ),
              );
            }
            if (!snapshot.hasData) {
              return const Center(child: Text("Tidak ada data"));
            }

            final data = snapshot.data!;
            final penjualan = data[0];
            final pembelian = data[1];
            final kas = data[2];
            final laba = penjualan - pembelian;

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 2.5,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: [
                  CustomCard(
                    title: "Total Penjualan",
                    value: "Rp ${penjualan.toStringAsFixed(0)}",
                    icon: Icons.point_of_sale,
                  ),
                  CustomCard(
                    title: "Total Pembelian",
                    value: "Rp ${pembelian.toStringAsFixed(0)}",
                    icon: Icons.shopping_cart,
                  ),
                  CustomCard(
                    title: "Kas Aktif",
                    value: "Rp ${kas.toStringAsFixed(0)}",
                    icon: Icons.account_balance_wallet,
                  ),
                  CustomCard(
                    title: "Laba Kotor",
                    value: "Rp ${laba.toStringAsFixed(0)}",
                    icon: Icons.trending_up,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
