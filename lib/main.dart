import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myapp/core/theme.dart' as AppTheme;
import 'firebase_options.dart';
import 'core/theme.dart';
import 'core/routes.dart';
import 'services/seed_admin_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // 🔹 Jalankan seeder admin versi baru
  await SeedAdminService().createDefaultAdmin();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIM Operasional Toko',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      routes: appRoutes,
      initialRoute: '/',
    );
  }
}
