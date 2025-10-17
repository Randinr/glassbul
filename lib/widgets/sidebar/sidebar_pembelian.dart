import 'package:flutter/material.dart';

class SidebarPembelian extends StatelessWidget {
  const SidebarPembelian({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text("Pembelian", style: TextStyle(color: Colors.white)),
      leading: const Icon(Icons.shopping_cart, color: Colors.white70),
      childrenPadding: const EdgeInsets.only(left: 30),
      children: [
        _item(context, "Permintaan Pembelian", "/pembelian/permintaan"),
        _item(context, "Pesanan Pembelian", "/pembelian/pesanan"),
        _item(context, "Penerima Barang", "/pembelian/penerimaan"),
        _item(context, "Faktur Pemasok", "/pembelian/faktur"),
        _item(context, "Return Pembelian", "/pembelian/return"),
        _item(context, "Utang Usaha", "/pembelian/utang"),
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
