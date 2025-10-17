import 'package:flutter/material.dart';

class SidebarPenjualan extends StatelessWidget {
  const SidebarPenjualan({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text("Penjualan", style: TextStyle(color: Colors.white)),
      leading: const Icon(Icons.receipt_long, color: Colors.white70),
      childrenPadding: const EdgeInsets.only(left: 30),
      children: [
        _item(context, "Riwayat Penjualan", "/penjualan/riwayat"),
        _item(context, "Buat Invoice", "/penjualan/invoice"),
        _item(context, "Piutang Usaha", "/penjualan/piutang"),
        _item(context, "Return Penjualan", "/penjualan/return"),
        _item(context, "Import Marketplace", "/penjualan/import"),
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
