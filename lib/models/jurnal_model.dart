class JurnalModel {
  final String id;
  final String akunDebit;
  final String akunKredit;
  final double jumlah;
  final String referensi;
  final DateTime tanggal;

  JurnalModel({
    required this.id,
    required this.akunDebit,
    required this.akunKredit,
    required this.jumlah,
    required this.referensi,
    required this.tanggal,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'akunDebit': akunDebit,
        'akunKredit': akunKredit,
        'jumlah': jumlah,
        'referensi': referensi,
        'tanggal': tanggal.toIso8601String(),
      };

  factory JurnalModel.fromMap(Map<String, dynamic> map) => JurnalModel(
        id: map['id'],
        akunDebit: map['akunDebit'],
        akunKredit: map['akunKredit'],
        jumlah: (map['jumlah'] ?? 0).toDouble(),
        referensi: map['referensi'],
        tanggal: DateTime.parse(map['tanggal']),
      );
}
