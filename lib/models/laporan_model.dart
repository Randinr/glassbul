class LaporanModel {
  final String id;
  final DateTime periodeAwal;
  final DateTime periodeAkhir;
  final double totalPendapatan;
  final double totalHPP;
  final double totalBeban;

  LaporanModel({
    required this.id,
    required this.periodeAwal,
    required this.periodeAkhir,
    required this.totalPendapatan,
    required this.totalHPP,
    required this.totalBeban,
  });

  double get labaBersih => totalPendapatan - totalHPP - totalBeban;

  Map<String, dynamic> toMap() => {
        'id': id,
        'periodeAwal': periodeAwal.toIso8601String(),
        'periodeAkhir': periodeAkhir.toIso8601String(),
        'totalPendapatan': totalPendapatan,
        'totalHPP': totalHPP,
        'totalBeban': totalBeban,
      };

  factory LaporanModel.fromMap(Map<String, dynamic> map) => LaporanModel(
        id: map['id'],
        periodeAwal: DateTime.parse(map['periodeAwal']),
        periodeAkhir: DateTime.parse(map['periodeAkhir']),
        totalPendapatan: (map['totalPendapatan'] ?? 0).toDouble(),
        totalHPP: (map['totalHPP'] ?? 0).toDouble(),
        totalBeban: (map['totalBeban'] ?? 0).toDouble(),
      );
}
