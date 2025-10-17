import 'package:flutter/material.dart';

// === AUTH ===
import '../pages/auth/login_page.dart';
import '../pages/auth/register_page.dart';
import '../pages/auth/splash_page.dart';

// === DASHBOARD ===
import '../pages/dashboard/dashboard_page.dart';

// === KASIR (POS) ===
import '../pages/kasir/transaksi_baru_page.dart';
import '../pages/kasir/transaksi_terparkir_page.dart';
import '../pages/kasir/retur_kasir_page.dart';
import '../pages/kasir/cetak_ulang_struk_page.dart';
import '../pages/kasir/laporan_hutang_page.dart';

// === PENJUALAN ===
import '../pages/penjualan/riwayat_penjualan_page.dart';
import '../pages/penjualan/buat_invoice_page.dart';
import '../pages/penjualan/piutang_usaha_page.dart';
import '../pages/penjualan/retur_penjualan_page.dart';
import '../pages/penjualan/import_marketplace_page.dart';

// === PEMBELIAN ===
import '../pages/pembelian/permintaan_pembelian_page.dart';
import '../pages/pembelian/pesanan_pembelian_page.dart';
import '../pages/pembelian/penerima_barang_page.dart';
import '../pages/pembelian/faktur_pemasok_page.dart';
import '../pages/pembelian/retur_pembelian_page.dart';
import '../pages/pembelian/utang_usaha_page.dart';

// === PRODUK & STOK ===
import '../pages/produk/daftar_produk_page.dart';
import '../pages/produk/kategori_produk_page.dart';
import '../pages/produk/import_produk_page.dart';
import '../pages/produk/gudang_page.dart';
import '../pages/produk/stok_menipis_page.dart';
import '../pages/produk/estimasi_stok_page.dart';
import '../pages/produk/transfer_stok_page.dart';
import '../pages/produk/stok_opname_page.dart';

// === PENGELUARAN ===
import '../pages/pengeluaran/pengeluaran_page.dart';

// === KAS & BANK ===
import '../pages/kasbank/kas_masuk_page.dart';
import '../pages/kasbank/transfer_kas_page.dart';
import '../pages/kasbank/rekonsiliasi_bank_page.dart';

// === AKUNTANSI ===
import '../pages/akuntansi/coa_page.dart';
import '../pages/akuntansi/jurnal_umum_page.dart';
import '../pages/akuntansi/buku_besar_page.dart';
import '../pages/akuntansi/tutup_buku_page.dart';
import '../pages/akuntansi/neraca_saldo_page.dart';

// === LAPORAN ===
import '../pages/laporan/laporan_penjualan_page.dart';
import '../pages/laporan/laporan_pembelian_page.dart';
import '../pages/laporan/laporan_stok_page.dart';
import '../pages/laporan/laba_rugi_page.dart';
import '../pages/laporan/neraca_page.dart';
import '../pages/laporan/arus_kas_page.dart';
import '../pages/laporan/laporan_export_page.dart';

// === MASTER DATA ===
import '../pages/master/pelanggan_page.dart';
import '../pages/master/pemasok_page.dart';
import '../pages/master/pajak_page.dart';
import '../pages/master/mata_uang_page.dart';

// === PENGATURAN ===
import '../pages/pengaturan/profile_perusahaan_page.dart';
import '../pages/pengaturan/pengaturan_akuntansi_page.dart';
import '../pages/pengaturan/marketplace_page.dart';
import '../pages/pengaturan/tema_tampilan_page.dart';
import '../pages/pengaturan/data_reset_page.dart';


// === MAP ROUTES ===
final Map<String, WidgetBuilder> appRoutes = {
  // 🔹 AUTH
  '/': (context) => const SplashPage(),
  '/login': (context) => const LoginPage(),
  '/register': (context) => const RegisterPage(),

  // 🔹 DASHBOARD
  '/dashboard': (context) => const DashboardPage(),

  // 🔹 KASIR
  '/kasir/transaksi-baru': (context) => const TransaksiBaruPage(),
  '/kasir/transaksi-terparkir': (context) => const TransaksiTerparkirPage(),
  '/kasir/retur': (context) => const ReturKasirPage(),
  '/kasir/cetak-struk': (context) => const CetakUlangStrukPage(),
  '/kasir/laporan-hutang': (context) => const LaporanHutangPage(),

  // 🔹 PENJUALAN
  '/penjualan/riwayat': (context) => const RiwayatPenjualanPage(),
  '/penjualan/invoice': (context) => const BuatInvoicePage(),
  '/penjualan/piutang': (context) => const PiutangUsahaPage(),
  '/penjualan/retur': (context) => const ReturPenjualanPage(),
  '/penjualan/import-marketplace': (context) => const ImportMarketplacePage(),

  // 🔹 PEMBELIAN
  '/pembelian/permintaan': (context) => const PermintaanPembelianPage(),
  '/pembelian/pesanan': (context) => const PesananPembelianPage(),
  '/pembelian/penerimaan': (context) => const PenerimaBarangPage(),
  '/pembelian/faktur': (context) => const FakturPemasokPage(),
  '/pembelian/retur': (context) => const ReturPembelianPage(),
  '/pembelian/utang': (context) => const UtangUsahaPage(),

  // 🔹 PRODUK & STOK
  '/produk/daftar': (context) => const DaftarProdukPage(),
  '/produk/kategori': (context) => const KategoriProdukPage(),
  '/produk/import': (context) => const ImportProdukPage(),
  '/produk/gudang': (context) => const GudangPage(),
  '/produk/stok-menipis': (context) => const StokMenipisPage(),
  '/produk/estimasi-stok': (context) => const EstimasiStokPage(),
  '/produk/transfer-stok': (context) => const TransferStokPage(),
  '/produk/stok-opname': (context) => const StokOpnamePage(),

  // 🔹 PENGELUARAN
  '/pengeluaran': (context) => const PengeluaranPage(),

  // 🔹 KAS & BANK
  '/kasbank/masuk': (context) => const KasMasukPage(),
  '/kasbank/transfer': (context) => const TransferKasPage(),
  '/kasbank/rekonsiliasi': (context) => const RekonsiliasiBankPage(),

  // 🔹 AKUNTANSI
  '/akuntansi/coa': (context) => const CoaPage(),
  '/akuntansi/jurnal': (context) => const JurnalUmumPage(),
  '/akuntansi/buku-besar': (context) => const BukuBesarPage(),
  '/akuntansi/tutup-buku': (context) => const TutupBukuPage(),
  '/akuntansi/neraca-saldo': (context) => const NeracaSaldoPage(),

  // 🔹 LAPORAN
  '/laporan/penjualan': (context) => const LaporanPenjualanPage(),
  '/laporan/pembelian': (context) => const LaporanPembelianPage(),
  '/laporan/stok': (context) => const LaporanStokPage(),
  '/laporan/laba-rugi': (context) => const LabaRugiPage(),
  '/laporan/neraca': (context) => const NeracaPage(),
  '/laporan/arus-kas': (context) => const ArusKasPage(),
  '/laporan/export': (context) => const LaporanExportPage(),

  // 🔹 MASTER DATA
  '/master/pelanggan': (context) => const PelangganPage(),
  '/master/pemasok': (context) => const PemasokPage(),
  '/master/pajak': (context) => const PajakPage(),
  '/master/mata-uang': (context) => const MataUangPage(),

  // 🔹 PENGATURAN
  '/pengaturan/profile': (context) => const ProfilePerusahaanPage(),
  '/pengaturan/akuntansi': (context) => const PengaturanAkuntansiPage(),
  '/pengaturan/marketplace': (context) => const MarketplacePage(),
  '/pengaturan/tema': (context) => const TemaTampilanPage(),
  '/pengaturan/data-reset': (context) => const DataResetPage(),
};
