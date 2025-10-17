import 'package:flutter/material.dart';
import '../sidebar/sidebar.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  final String title;

  const MainLayout({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      appBar: AppBar(title: Text(title)),
      body: Padding(padding: const EdgeInsets.all(16), child: child),
    );
  }
}
