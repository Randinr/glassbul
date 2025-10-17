import 'package:cloud_firestore/cloud_firestore.dart';

class KasBankService {
  final _col = FirebaseFirestore.instance.collection('kasbank');

  Future<void> tambahKasMasuk(String keterangan, double jumlah) async {
    await _col.add({
      'jenis': 'masuk',
      'keterangan': keterangan,
      'jumlah': jumlah,
      'tanggal': DateTime.now().toIso8601String()
    });
  }

  Future<void> tambahKasKeluar(String keterangan, double jumlah) async {
    await _col.add({
      'jenis': 'keluar',
      'keterangan': keterangan,
      'jumlah': jumlah,
      'tanggal': DateTime.now().toIso8601String()
    });
  }

  Future<void> transferKas(String dari, String ke, double jumlah) async {
    await _col.add({
      'jenis': 'transfer',
      'dari': dari,
      'ke': ke,
      'jumlah': jumlah,
      'tanggal': DateTime.now().toIso8601String()
    });
  }
}
