import 'package:flutter/material.dart';
import 'package:myapp/models/produk_model.dart';
import '../../widgets/layout/main_layout.dart';
import '../../services/produk_service.dart';
import '../../widgets/components/custom_button.dart';
import '../../widgets/components/search_field.dart';

class DaftarProdukPage extends StatefulWidget {
  const DaftarProdukPage({super.key});

  @override
  State<DaftarProdukPage> createState() => _DaftarProdukPageState();
}

class _DaftarProdukPageState extends State<DaftarProdukPage> {
  final service = ProdukService();
  String search = "";

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Daftar Produk",
      child: Column(
        children: [
          SearchField(onChanged: (val) => setState(() => search = val)),
          Expanded(
            child: StreamBuilder(
              stream: service.getProdukStream(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
                final produkList = snapshot.data!
                    .where((p) => p.nama.toLowerCase().contains(search.toLowerCase()))
                    .toList();
                return ListView(
                  children: produkList
                      .map((p) => Card(
                            color: Colors.grey[850],
                            child: ListTile(
                              title: Text(p.nama, style: const TextStyle(color: Colors.white)),
                              subtitle: Text("Stok: ${p.stok} | Harga: Rp ${p.harga}",
                                  style: const TextStyle(color: Colors.white70)),
                            ),
                          ))
                      .toList(),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          CustomButton(text: "Tambah Produk", onPressed: () {}),
        ],
      ),
    );
  }
}

extension on ProdukModel {
  get harga => null;
}
