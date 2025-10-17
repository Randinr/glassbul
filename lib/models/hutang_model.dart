class HutangModel {
  final String id;
  final String pemasokId;
  final double jumlah;
  final DateTime tanggal;
  final bool lunas;

  HutangModel({
    required this.id,
    required this.pemasokId,
    required this.jumlah,
    required this.tanggal,
    this.lunas = false,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'pemasokId': pemasokId,
        'jumlah': jumlah,
        'tanggal': tanggal.toIso8601String(),
        'lunas': lunas,
      };

  factory HutangModel.fromMap(Map<String, dynamic> map, Map<String, dynamic> data) => HutangModel(
        id: map['id'],
        pemasokId: map['pemasokId'],
        jumlah: (map['jumlah'] ?? 0).toDouble(),
        tanggal: DateTime.parse(map['tanggal']),
        lunas: map['lunas'] ?? false,
      );
}
