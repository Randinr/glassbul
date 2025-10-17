import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../services/auth_service.dart';
import '../../widgets/components/custom_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _auth = AuthService();
  final _email = TextEditingController();
  final _pass = TextEditingController();
  bool loading = false;
  String? error;

  void _register() async {
    setState(() {
      loading = true;
      error = null;
    });
    try {
      await _auth.register(_email.text, _pass.text);
      if (mounted) Navigator.pushReplacementNamed(context, "/dashboard");
    } on FirebaseAuthException catch (e) {
      setState(() => error = e.message);
    } finally {
      setState(() => loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: 350,
          child: Card(
            color: Colors.grey[900],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Daftar Akun Baru", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 24),
                  TextField(
                    controller: _email,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(labelText: "Email", labelStyle: TextStyle(color: Colors.white70)),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _pass,
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(labelText: "Password", labelStyle: TextStyle(color: Colors.white70)),
                  ),
                  if (error != null)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(error!, style: const TextStyle(color: Colors.redAccent)),
                    ),
                  const SizedBox(height: 20),
                  loading
                      ? const CircularProgressIndicator()
                      : CustomButton(text: "Daftar", onPressed: _register),
                  const SizedBox(height: 12),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, "/login"),
                    child: const Text("Sudah punya akun? Login", style: TextStyle(color: Colors.white70)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
