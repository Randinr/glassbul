import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_model.dart';

class UserService {
  final _col = FirebaseFirestore.instance.collection('users');

  Future<void> createUser(String uid, String email, String role) async {
    await _col.doc(uid).set({'email': email, 'role': role});
  }

  Future<UserModel?> getUser(String uid) async {
    final doc = await _col.doc(uid).get();
    if (!doc.exists) return null;
    return UserModel.fromMap(doc.id, doc.data()!);
  }

  Stream<UserModel?> streamUser(String uid) {
    return _col.doc(uid).snapshots().map(
      (snap) => snap.exists ? UserModel.fromMap(snap.id, snap.data()!) : null,
    );
  }
}
