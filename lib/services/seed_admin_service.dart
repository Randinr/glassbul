import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SeedAdminService {
  final _auth = FirebaseAuth.instance;
  final _db = FirebaseFirestore.instance;

  /// Membuat user admin default jika belum ada (di Auth & Firestore)
  Future<void> createDefaultAdmin() async {
    const email = "admin@simtoko.com";
    const password = "123456";
    const role = "admin";

    try {
      print("🧭 Memeriksa admin default di Firestore...");

      // === 1️⃣ Cek di Firestore ===
      final adminDocs = await _db
          .collection('users')
          .where('role', isEqualTo: role)
          .limit(1)
          .get();

      // === 2️⃣ Cek di Firebase Auth ===
      UserCredential? authUser;
      User? user;

      try {
        // Gunakan signInWithEmailAndPassword agar tidak duplikat
        authUser = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        user = authUser.user;
        print("✅ Admin Auth sudah ada dan berhasil login.");
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print("⚠️ Admin belum ada di Auth, membuat akun baru...");
          final newUser = await _auth.createUserWithEmailAndPassword(
            email: email,
            password: password,
          );
          user = newUser.user;
        } else if (e.code == 'wrong-password') {
          print("⚠️ Password admin salah di Auth. Ubah manual di Firebase Console jika perlu.");
          return;
        } else {
          print("❌ Gagal autentikasi admin: ${e.message}");
          return;
        }
      }

      // === 3️⃣ Cek dan sinkron Firestore ===
      if (user == null) {
        print("❌ Gagal mendapatkan UID admin dari Auth.");
        return;
      }

      final docRef = _db.collection('users').doc(user.uid);
      final docSnap = await docRef.get();

      if (!docSnap.exists) {
        print("⚙️ Menulis ulang data admin ke Firestore...");
        await docRef.set({
          'email': email,
          'role': role,
          'created_at': DateTime.now().toIso8601String(),
        });
      } else {
        print("✅ Data admin sudah tersedia di Firestore.");
      }

      print("🎉 Seeder selesai: akun admin siap digunakan!");
      print("👉 Email: $email");
      print("👉 Password: $password");
    } catch (e) {
      print("❌ Error pada seeder admin: $e");
    }
  }
}
