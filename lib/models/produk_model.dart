class ProdukModel {
  final String id;
  final String nama;
  final String kategori;
  final double hargaBeli;
  final double hargaJual;
  final int stok;

  ProdukModel({
    required this.id,
    required this.nama,
    required this.kategori,
    required this.hargaBeli,
    required this.hargaJual,
    required this.stok,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'nama': nama,
        'kategori': kategori,
        'hargaBeli': hargaBeli,
        'hargaJual': hargaJual,
        'stok': stok,
      };

  factory ProdukModel.fromMap(Map<String, dynamic> map, [Map<String, dynamic>? data]) => ProdukModel(
        id: map['id'],
        nama: map['nama'],
        kategori: map['kategori'],
        hargaBeli: (map['hargaBeli'] ?? 0).toDouble(),
        hargaJual: (map['hargaJual'] ?? 0).toDouble(),
        stok: (map['stok'] ?? 0).toInt(),
      );
}
