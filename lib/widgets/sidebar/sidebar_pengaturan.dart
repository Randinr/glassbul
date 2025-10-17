import 'package:flutter/material.dart';

class SidebarPengaturan extends StatelessWidget {
  const SidebarPengaturan({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text("Pengaturan", style: TextStyle(color: Colors.white)),
      leading: const Icon(Icons.settings, color: Colors.white70),
      childrenPadding: const EdgeInsets.only(left: 30),
      children: [
        _item(context, "Profil Perusahaan", "/pengaturan/profil"),
        _item(context, "Akuntansi", "/pengaturan/akuntansi"),
        _item(context, "Marketplace", "/pengaturan/marketplace"),
        _item(context, "Tema & Tampilan", "/pengaturan/tema"),
        _item(context, "Data & Reset", "/pengaturan/reset"),
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
