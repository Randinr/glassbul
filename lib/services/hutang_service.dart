import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/hutang_model.dart';

class HutangService {
  final _col = FirebaseFirestore.instance.collection('hutang');

  Stream<List<HutangModel>> streamHutang() {
    return _col.snapshots().map((snap) =>
        snap.docs.map((doc) => HutangModel.fromMap(doc.id as Map<String, dynamic>, doc.data())).toList());
  }

  Future<void> tandaiLunas(String id) async {
    await _col.doc(id).update({'lunas': true});
  }
}
