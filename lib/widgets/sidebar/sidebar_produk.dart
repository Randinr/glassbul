import 'package:flutter/material.dart';

class SidebarProduk extends StatelessWidget {
  const SidebarProduk({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text("Produk & Stok", style: TextStyle(color: Colors.white)),
      leading: const Icon(Icons.inventory_2, color: Colors.white70),
      childrenPadding: const EdgeInsets.only(left: 30),
      children: [
        _item(context, "Daftar Produk", "/produk/daftar"),
        _item(context, "Kategori Produk", "/produk/kategori"),
        _item(context, "Import Produk", "/produk/import"),
        _item(context, "Gudang", "/produk/gudang"),
        _item(context, "Stok Menipis", "/produk/menipis"),
        _item(context, "Estimasi Stok", "/produk/estimasi"),
        _item(context, "Transfer Stok", "/produk/transfer"),
        _item(context, "Stok Opname", "/produk/opname"),
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
