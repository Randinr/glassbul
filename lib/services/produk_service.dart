import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/produk_model.dart';

class ProdukService {
  final _col = FirebaseFirestore.instance.collection('produk');

  Stream<List<ProdukModel>> getProdukStream() {
    return _col.snapshots().map((snap) =>
        snap.docs.map((doc) => ProdukModel.fromMap(doc.id as Map<String, dynamic>, doc.data())).toList());
  }

  Future<void> tambahProduk(ProdukModel p) async {
    await _col.add(p.toMap());
  }

  Future<void> updateStok(String id, int stokBaru) async {
    await _col.doc(id).update({'stok': stokBaru});
  }

  Future<void> hapusProduk(String id) async {
    await _col.doc(id).delete();
  }
}
