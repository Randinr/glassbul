import 'package:cloud_firestore/cloud_firestore.dart';

class CoaService {
  final _col = FirebaseFirestore.instance.collection('coa');

  Future<void> tambahAkun(String kode, String nama, String tipe) async {
    await _col.add({'kode': kode, 'nama': nama, 'tipe': tipe});
  }

  Stream<QuerySnapshot> streamCoa() {
    return _col.snapshots();
  }
}
