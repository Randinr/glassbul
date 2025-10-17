import 'package:flutter/material.dart';
import '../../widgets/layout/main_layout.dart';

class ProfilePerusahaanPage extends StatelessWidget {
  const ProfilePerusahaanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: "Profil Perusahaan",
      child: Center(child: Text("Informasi identitas dan alamat perusahaan.")),
    );
  }
}
