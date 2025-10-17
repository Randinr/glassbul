import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/transaksi_model.dart';

class PenjualanService {
  final _col = FirebaseFirestore.instance.collection('penjualan');

  Future<void> tambahPenjualan(TransaksiModel t) async {
    await _col.add(t.toMap());
  }

  Stream<List<TransaksiModel>> streamPenjualan() {
    return _col.snapshots().map((snap) =>
        snap.docs.map((doc) => TransaksiModel.fromMap(doc.id as Map<String, dynamic>, doc.data())).toList());
  }
}
