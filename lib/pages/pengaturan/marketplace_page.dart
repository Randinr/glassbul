import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class MarketplacePage extends StatelessWidget {
  const MarketplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Integrasi Marketplace",
      child: Center(child: Text("Integrasikan Shopee, Tokopedia, atau TikTok Shop.")),
    );
  }
}
