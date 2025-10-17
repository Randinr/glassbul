# BLUEPRINT SISTEM AKUNTANSI OTOMATIS

Setiap transaksi di aplikasi ini mencatat jurnal akuntansi secara otomatis.

## 🔹 Penjualan
- **Debit**: Kas / Piutang Usaha  
- **Kredit**: Pendapatan Penjualan  
- **Debit**: HPP  
- **Kredit**: Persediaan  

## 🔹 Pembelian
- **Debit**: Persediaan  
- **Kredit**: Utang Usaha  

## 🔹 Pembayaran Hutang
- **Debit**: Utang Usaha  
- **Kredit**: Kas / Bank  

## 🔹 Pelunasan Piutang
- **Debit**: Kas / Bank  
- **Kredit**: Piutang Usaha  

## 🔹 Pengeluaran Operasional
- **Debit**: Beban Operasional  
- **Kredit**: Kas / Bank  

## 🔹 Tutup Buku
- Pendapatan dan Beban ditutup ke akun **Laba Ditahan**.
