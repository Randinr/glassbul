class PembelianModel {
  final String id;
  final String pemasokId;
  final DateTime tanggal;
  final double total;
  final bool sudahDibayar;

  PembelianModel({
    required this.id,
    required this.pemasokId,
    required this.tanggal,
    required this.total,
    this.sudahDibayar = false,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'pemasokId': pemasokId,
        'tanggal': tanggal.toIso8601String(),
        'total': total,
        'sudahDibayar': sudahDibayar,
      };

  factory PembelianModel.fromMap(Map<String, dynamic> map, [Map<String, dynamic>? data]) => PembelianModel(
        id: map['id'],
        pemasokId: map['pemasokId'],
        tanggal: DateTime.parse(map['tanggal']),
        total: (map['total'] ?? 0).toDouble(),
        sudahDibayar: map['sudahDibayar'] ?? false,
      );
}
