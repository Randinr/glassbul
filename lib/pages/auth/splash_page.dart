import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // Saat Firebase belum siap
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            backgroundColor: Colors.black,
            body: Center(
              child: CircularProgressIndicator(color: Colors.blueAccent),
            ),
          );
        }

        // Jika sudah login
        if (snapshot.hasData) {
          Future.microtask(() =>
              Navigator.pushReplacementNamed(context, '/dashboard'));
        } else {
          // Jika belum login
          Future.microtask(() =>
              Navigator.pushReplacementNamed(context, '/login'));
        }

        // Tampilan sementara
        return const Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: CircularProgressIndicator(color: Colors.blueAccent),
          ),
        );
      },
    );
  }
}
