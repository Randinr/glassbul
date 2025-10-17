import 'package:flutter/material.dart';

class SidebarMaster extends StatelessWidget {
  const SidebarMaster({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text("Master Data", style: TextStyle(color: Colors.white)),
      leading: const Icon(Icons.people, color: Colors.white70),
      childrenPadding: const EdgeInsets.only(left: 30),
      children: [
        _item(context, "Pelanggan", "/master/pelanggan"),
        _item(context, "Pemasok", "/master/pemasok"),
        _item(context, "Pajak", "/master/pajak"),
        _item(context, "Mata Uang", "/master/matauang"),
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
