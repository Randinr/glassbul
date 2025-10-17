import 'package:flutter/material.dart';
import '../components/custom_card.dart';

class DashboardSummary extends StatelessWidget {
  const DashboardSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 2.5,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: const [
        CustomCard(title: "Total Penjualan", value: "Rp 12.500.000", icon: Icons.point_of_sale),
        CustomCard(title: "Total Pembelian", value: "Rp 8.000.000", icon: Icons.shopping_cart),
        CustomCard(title: "Kas Saat Ini", value: "Rp 4.500.000", icon: Icons.account_balance_wallet),
        CustomCard(title: "Laba Bersih", value: "Rp 2.300.000", icon: Icons.trending_up),
      ],
    );
  }
}
