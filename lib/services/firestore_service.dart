import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addData(String collection, Map<String, dynamic> data) async {
    await _db.collection(collection).add(data);
  }

  Future<void> updateData(String collection, String id, Map<String, dynamic> data) async {
    await _db.collection(collection).doc(id).update(data);
  }

  Future<void> deleteData(String collection, String id) async {
    await _db.collection(collection).doc(id).delete();
  }

  Stream<List<Map<String, dynamic>>> getStream(String collection) {
    return _db.collection(collection).snapshots().map(
        (snap) => snap.docs.map((doc) => {...doc.data(), 'id': doc.id}).toList());
  }

  Future<List<Map<String, dynamic>>> getOnce(String collection) async {
    final query = await _db.collection(collection).get();
    return query.docs.map((doc) => {...doc.data(), 'id': doc.id}).toList();
  }
}
