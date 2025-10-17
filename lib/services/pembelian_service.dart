import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/pembelian_model.dart';

class PembelianService {
  final _col = FirebaseFirestore.instance.collection('pembelian');

  Future<void> tambahPembelian(PembelianModel p) async {
    await _col.add(p.toMap());
  }

  Stream<List<PembelianModel>> streamPembelian() {
    return _col.snapshots().map((snap) =>
        snap.docs.map((doc) => PembelianModel.fromMap(doc.id as Map<String, dynamic>, doc.data())).toList());
  }
}
