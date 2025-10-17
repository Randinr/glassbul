class PenjualanModel {
  final String id;
  final String pelangganId;
  final DateTime tanggal;
  final double total;
  final bool lunas;

  PenjualanModel({
    required this.id,
    required this.pelangganId,
    required this.tanggal,
    required this.total,
    this.lunas = true,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'pelangganId': pelangganId,
        'tanggal': tanggal.toIso8601String(),
        'total': total,
        'lunas': lunas,
      };

  factory PenjualanModel.fromMap(Map<String, dynamic> map) => PenjualanModel(
        id: map['id'],
        pelangganId: map['pelangganId'],
        tanggal: DateTime.parse(map['tanggal']),
        total: (map['total'] ?? 0).toDouble(),
        lunas: map['lunas'] ?? true,
      );
}
