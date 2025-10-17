class TransaksiModel {
  final String id;
  final DateTime tanggal;
  final String jenis; // Penjualan, Pembelian, KasMasuk, dll
  final double total;
  final String metodePembayaran;
  final String keterangan;

  TransaksiModel({
    required this.id,
    required this.tanggal,
    required this.jenis,
    required this.total,
    required this.metodePembayaran,
    required this.keterangan,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'tanggal': tanggal.toIso8601String(),
        'jenis': jenis,
        'total': total,
        'metodePembayaran': metodePembayaran,
        'keterangan': keterangan,
      };

  factory TransaksiModel.fromMap(Map<String, dynamic> map, [Map<String, dynamic>? data]) => TransaksiModel(
        id: map['id'],
        tanggal: DateTime.parse(map['tanggal']),
        jenis: map['jenis'],
        total: (map['total'] ?? 0).toDouble(),
        metodePembayaran: map['metodePembayaran'],
        keterangan: map['keterangan'],
      );
}
