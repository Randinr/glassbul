// TODO Implement this library.
import 'dart:io';
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';

class BackupService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Backup semua koleksi Firestore jadi file JSON
  Future<void> backupAll() async {
    try {
      final collections = await _db.listCollections();
      final Map<String, dynamic> allData = {};

      for (var col in collections) {
        final docs = await col.get();
        allData[col.id] = docs.docs.map((d) => {'id': d.id, ...d.data()}).toList();
      }

      final json = const JsonEncoder.withIndent('  ').convert(allData);
      final dir = await getApplicationDocumentsDirectory();
      final file = File("${dir.path}/firestore_backup.json");

      await file.writeAsString(json);
      await OpenFile.open(file.path);
      print("✅ Backup berhasil: ${file.path}");
    } catch (e) {
      print("❌ Gagal backup Firestore: $e");
      rethrow;
    }
  }
}

extension on FirebaseFirestore {
  Future listCollections() async {}
}
