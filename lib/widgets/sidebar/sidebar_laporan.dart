import 'package:flutter/material.dart';

class SidebarLaporan extends StatelessWidget {
  const SidebarLaporan({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text("Laporan", style: TextStyle(color: Colors.white)),
      leading: const Icon(Icons.assessment, color: Colors.white70),
      childrenPadding: const EdgeInsets.only(left: 30),
      children: [
        _item(context, "Laporan Penjualan", "/laporan/penjualan"),
        _item(context, "Laporan Pembelian", "/laporan/pembelian"),
        _item(context, "Laporan Stok", "/laporan/stok"),
        _item(context, "Laba Rugi", "/laporan/labarugi"),
        _item(context, "Neraca", "/laporan/neraca"),
        _item(context, "Arus Kas", "/laporan/aruskas"),
      ],
    );
  }

  ListTile _item(BuildContext ctx, String title, String route) {
    return ListTile(
      title: Text(title, style: const TextStyle(color: Colors.white70)),
      onTap: () => Navigator.pushNamed(ctx, route),
    );
  }
}
