import 'package:cloud_firestore/cloud_firestore.dart';

class JurnalService {
  final _col = FirebaseFirestore.instance.collection('jurnal');

  Future<void> tambahJurnal({
    required String deskripsi,
    required String akunDebit,
    required String akunKredit,
    required double jumlah,
  }) async {
    await _col.add({
      'deskripsi': deskripsi,
      'akunDebit': akunDebit,
      'akunKredit': akunKredit,
      'jumlah': jumlah,
      'tanggal': DateTime.now().toIso8601String(),
    });
  }
}
