class PelangganModel {
  final String id;
  final String nama;
  final String telepon;
  final String alamat;
  final double saldoPiutang;

  PelangganModel({
    required this.id,
    required this.nama,
    required this.telepon,
    required this.alamat,
    this.saldoPiutang = 0,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'nama': nama,
        'telepon': telepon,
        'alamat': alamat,
        'saldoPiutang': saldoPiutang,
      };

  factory PelangganModel.fromMap(Map<String, dynamic> map) => PelangganModel(
        id: map['id'],
        nama: map['nama'],
        telepon: map['telepon'],
        alamat: map['alamat'],
        saldoPiutang: (map['saldoPiutang'] ?? 0).toDouble(),
      );
}
