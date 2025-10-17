import 'package:flutter/material.dart';

class SidebarPengeluaran extends StatelessWidget {
  const SidebarPengeluaran({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.money_off, color: Colors.white70),
      title: const Text("Pengeluaran", style: TextStyle(color: Colors.white)),
      onTap: () => Navigator.pushNamed(context, "/pengeluaran"),
    );
  }
}
