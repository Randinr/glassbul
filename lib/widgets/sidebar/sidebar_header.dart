import 'package:flutter/material.dart';

class SidebarHeader extends StatelessWidget {
  const SidebarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(color: Color(0xFF1976D2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("CV SUMBER ISOLASI MANDIRI",
              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text("Sistem Operasional Toko", style: TextStyle(color: Colors.white70, fontSize: 12)),
        ],
      ),
    );
  }
}
