class PemasokModel {
  final String id;
  final String nama;
  final String kontak;
  final String alamat;
  final double saldoHutang;

  PemasokModel({
    required this.id,
    required this.nama,
    required this.kontak,
    required this.alamat,
    this.saldoHutang = 0,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'nama': nama,
        'kontak': kontak,
        'alamat': alamat,
        'saldoHutang': saldoHutang,
      };

  factory PemasokModel.fromMap(Map<String, dynamic> map) => PemasokModel(
        id: map['id'],
        nama: map['nama'],
        kontak: map['kontak'],
        alamat: map['alamat'],
        saldoHutang: (map['saldoHutang'] ?? 0).toDouble(),
      );
}
