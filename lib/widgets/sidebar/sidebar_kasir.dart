import 'package:flutter/material.dart';

class SidebarKasir extends StatelessWidget {
  final String? currentRoute;
  const SidebarKasir({super.key, this.currentRoute});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        initiallyExpanded: true,
        leading: const Icon(Icons.point_of_sale_rounded, color: Colors.white70),
        title: const Text(
          "Kasir (POS)",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        childrenPadding: const EdgeInsets.only(left: 16),
        children: [
          _buildMenuItem(
            context,
            title: "Transaksi Baru",
            icon: Icons.add_shopping_cart,
            route: "/kasir/transaksi-baru",
          ),
          _buildMenuItem(
            context,
            title: "Transaksi Terparkir",
            icon: Icons.hourglass_bottom_rounded,
            route: "/kasir/transaksi-terparkir",
          ),
          _buildMenuItem(
            context,
            title: "Return Kasir",
            icon: Icons.keyboard_return_rounded,
            route: "/kasir/retur",
          ),
          _buildMenuItem(
            context,
            title: "Cetak Ulang Struk",
            icon: Icons.print_rounded,
            route: "/kasir/cetak-struk",
          ),
          _buildMenuItem(
            context,
            title: "Laporan Hutang",
            icon: Icons.receipt_long_rounded,
            route: "/kasir/laporan-hutang",
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext ctx,
      {required String title, required IconData icon, required String route}) {
    final isActive = ModalRoute.of(ctx)?.settings.name == route;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          if (!isActive) Navigator.pushNamed(ctx, route);
        },
        child: Container(
          decoration: BoxDecoration(
            color: isActive ? Colors.blueAccent.withOpacity(0.2) : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              Icon(icon,
                  size: 20,
                  color: isActive ? Colors.blueAccent : Colors.white60),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: isActive ? Colors.blueAccent : Colors.white70,
                    fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
