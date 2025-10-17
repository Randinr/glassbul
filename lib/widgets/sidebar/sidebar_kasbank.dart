import 'package:flutter/material.dart';

class SidebarKasBank extends StatelessWidget {
  const SidebarKasBank({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text("Kas & Bank", style: TextStyle(color: Colors.white)),
      leading: const Icon(Icons.account_balance_wallet, color: Colors.white70),
      childrenPadding: const EdgeInsets.only(left: 30),
      children: [
        _item(context, "Kas Masuk", "/kasbank/masuk"),
        _item(context, "Transfer Antar Kas", "/kasbank/transfer"),
        _item(context, "Rekonsiliasi Bank", "/kasbank/rekon"),
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
