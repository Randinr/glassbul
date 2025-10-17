import 'package:flutter/material.dart';
import 'sidebar_header.dart';
import 'sidebar_kasir.dart';
import 'sidebar_penjualan.dart';
import 'sidebar_pembelian.dart';
import 'sidebar_produk.dart';
import 'sidebar_pengeluaran.dart';
import 'sidebar_kasbank.dart';
import 'sidebar_akuntansi.dart';
import 'sidebar_laporan.dart';
import 'sidebar_master.dart';
import 'sidebar_pengaturan.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF1E1E1E),
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          SidebarHeader(),
          SidebarKasir(),
          SidebarPenjualan(),
          SidebarPembelian(),
          SidebarProduk(),
          SidebarPengeluaran(),
          SidebarKasBank(),
          SidebarAkuntansi(),
          SidebarLaporan(),
          SidebarMaster(),
          SidebarPengaturan(),
        ],
      ),
    );
  }
}
