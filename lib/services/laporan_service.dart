import 'package:cloud_firestore/cloud_firestore.dart';

class LaporanService {
  final _db = FirebaseFirestore.instance;

  Future<double> totalPenjualan() async {
    final query = await _db.collection('penjualan').get();
    double total = 0;
    for (var doc in query.docs) {
      total += (doc.data()['total'] ?? 0).toDouble();
    }
    return total;
  }

  Future<double> totalPembelian() async {
    final query = await _db.collection('pembelian').get();
    double total = 0;
    for (var doc in query.docs) {
      total += (doc.data()['total'] ?? 0).toDouble();
    }
    return total;
  }
}
