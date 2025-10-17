import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/user_service.dart';
import '../widgets/components/loading_indicator.dart';

class RoleGuard extends StatelessWidget {
  final Widget child;
  final List<String> allowedRoles;

  const RoleGuard({
    super.key,
    required this.child,
    required this.allowedRoles,
  });

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return const Center(child: Text("⚠️ Belum login."));
    }

    final service = UserService();

    return StreamBuilder(
      stream: service.streamUser(user.uid),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingIndicator();
        }

        if (!snapshot.hasData) {
          return const Center(child: Text("⚠️ Data pengguna tidak ditemukan di Firestore."));
        }

        final data = snapshot.data!;
        if (allowedRoles.contains(data.role)) {
          return child;
        } else {
          return const Center(
            child: Text(
              "🚫 Anda tidak memiliki hak akses ke halaman ini.",
              style: TextStyle(color: Colors.redAccent),
            ),
          );
        }
      },
    );
  }
}
