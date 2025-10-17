class AkunModel {
  final String kode;
  final String nama;
  final String tipe; // Aset, Kewajiban, Modal, Pendapatan, Beban

  AkunModel({
    required this.kode,
    required this.nama,
    required this.tipe,
  });

  Map<String, dynamic> toMap() => {
        'kode': kode,
        'nama': nama,
        'tipe': tipe,
      };

  factory AkunModel.fromMap(Map<String, dynamic> map) => AkunModel(
        kode: map['kode'],
        nama: map['nama'],
        tipe: map['tipe'],
      );
}
