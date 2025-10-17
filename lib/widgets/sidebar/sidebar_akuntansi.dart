import 'package:flutter/material.dart';

class SidebarAkuntansi extends StatelessWidget {
  const SidebarAkuntansi({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text("Akuntansi", style: TextStyle(color: Colors.white)),
      leading: const Icon(Icons.calculate, color: Colors.white70),
      childrenPadding: const EdgeInsets.only(left: 30),
      children: [
        _item(context, "Bagan Akun (COA)", "/akuntansi/coa"),
        _item(context, "Jurnal Umum", "/akuntansi/jurnal"),
        _item(context, "Buku Besar", "/akuntansi/bukubesar"),
        _item(context, "Tutup Buku", "/akuntansi/tutup"),
        _item(context, "Neraca Saldo", "/akuntansi/neraca"),
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
