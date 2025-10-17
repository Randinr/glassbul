import 'package:cloud_firestore/cloud_firestore.dart';

class PiutangService {
  final _col = FirebaseFirestore.instance.collection('piutang');

  Stream<QuerySnapshot> streamPiutang() {
    return _col.snapshots();
  }

  Future<void> tandaiLunas(String id) async {
    await _col.doc(id).update({'lunas': true});
  }
}
