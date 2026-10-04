import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BarangBelanja { // Class untuk merepresentasikan barang belanja
  final String nama; // final karena nama barang tidak akan berubah setelah dibuat
  final int jumlah;
  final String kategori;
  bool sudahDibeli;

  BarangBelanja({ // Konstruktor untuk membuat instance BarangBelanja
    required this.nama,
    required this.jumlah,
    required this.kategori,
    this.sudahDibeli = false,
  });
}

class BelanjaModel extends ChangeNotifier { // Class untuk mengelola daftar belanja, menggunakan ChangeNotifier agar bisa digunakan dengan Provider
  final List<BarangBelanja> _items = [];

  List<BarangBelanja> get items {
    return List.unmodifiable(_items);
  }

  int get jumlahBelumDibeli {
    return _items.where((barang) => !barang.sudahDibeli).length;
  }

  void tambah({ // Method untuk menambahkan barang belanja baru ke daftar
    required String nama,
    required int jumlah,
    required String kategori,
  }) {
    _items.add(
      BarangBelanja(
        nama: nama,
        jumlah: jumlah,
        kategori: kategori,
      ),
    );

    notifyListeners();
  }

  void toggle(int index) { // Method untuk mengubah status sudahDibeli dari barang belanja di index tertentu
    _items[index].sudahDibeli = !_items[index].sudahDibeli;
    notifyListeners();
  }

  void hapus(int index) { // Method untuk menghapus barang belanja di index tertentu
    _items.removeAt(index);
    notifyListeners();
  }
}

void main() {
  runApp( // Fungsi utama untuk menjalankan aplikasi Flutter
    ChangeNotifierProvider(
      create: (_) => BelanjaModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Belanja',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: const DaftarBelanjaPage(),
    );
  }
}

class DaftarBelanjaPage extends StatelessWidget {
  const DaftarBelanjaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<BelanjaModel>();

    return Scaffold(
      appBar: AppBar( // AppBar untuk menampilkan judul halaman dan jumlah barang yang belum dibeli
        title: Text(
          'Daftar Belanja (${model.jumlahBelumDibeli})',
        ),
      ),
      body: model.items.isEmpty
          ? const Center(
              child: Text(
                'Belum ada barang',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemCount: model.items.length,
              itemBuilder: (context, index) {
                final barang = model.items[index];

                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  child: ListTile(
                    leading: Checkbox( // Checkbox untuk menandai apakah barang sudah dibeli atau belum
                      value: barang.sudahDibeli, // saat checkbox dicentang, artinya barang sudah dibeli
                      onChanged: (_) {
                        context.read<BelanjaModel>().toggle(index); // Artinya kita memanggil method toggle di BelanjaModel untuk mengubah status sudahDibeli dari barang tersebut
                      },
                    ),
                    title: Text(
                      barang.nama,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: barang.sudahDibeli
                            ? TextDecoration.lineThrough
                            : null,
                      ),
                    ),
                    subtitle: Text(
                      'Jumlah: ${barang.jumlah} • Kategori: ${barang.kategori}',
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        context.read<BelanjaModel>().hapus(index); // Artinya kita memanggil method hapus di BelanjaModel untuk menghapus barang tersebut dari daftar belanja
                      },
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const FormBelanjaPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class FormBelanjaPage extends StatefulWidget {
  const FormBelanjaPage({super.key});

  @override
  State<FormBelanjaPage> createState() => _FormBelanjaPageState();
}

class _FormBelanjaPageState extends State<FormBelanjaPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _namaController =
      TextEditingController();

  final TextEditingController _jumlahController =
      TextEditingController();

  String? _kategori;

  final List<String> _daftarKategori = [
    'Makanan',
    'Minuman',
    'Kebutuhan Rumah',
    'Alat Tulis',
    'Lainnya',
  ];

  @override
  void dispose() {
    _namaController.dispose();
    _jumlahController.dispose();
    super.dispose();
  }

  void _simpan() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final nama = _namaController.text.trim();
    final jumlah = int.parse(
      _jumlahController.text.trim(),
    );
    final kategori = _kategori!;

    context.read<BelanjaModel>().tambah(
          nama: nama,
          jumlah: jumlah,
          kategori: kategori,
        );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Barang'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _namaController,
              decoration: const InputDecoration(
                labelText: 'Nama barang',
                hintText: 'Contoh: Beras',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                final nama = value?.trim() ?? '';

                if (nama.isEmpty) { // Jika nama barang kosong, maka akan menampilkan pesan error
                  return 'Nama barang wajib diisi';
                }

                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _jumlahController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Jumlah',
                hintText: 'Contoh: 2',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                final jumlah = value?.trim() ?? '';

                if (jumlah.isEmpty) {
                  return 'Jumlah wajib diisi';
                }

                final angka = int.tryParse(jumlah); // Mengubah string menjadi integer, jika gagal maka akan menghasilkan null

                if (angka == null) {
                  return 'Jumlah harus berupa angka';
                }

                if (angka <= 0) {
                  return 'Jumlah harus lebih dari 0';
                }

                return null;
              },
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              initialValue: _kategori,
              decoration: const InputDecoration(
                labelText: 'Kategori',
                border: OutlineInputBorder(),
              ),
              items: _daftarKategori.map(
                (kategori) {
                  return DropdownMenuItem(
                    value: kategori,
                    child: Text(kategori),
                  );
                },
              ).toList(),
              onChanged: (value) {
                setState(() {
                  _kategori = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) { // Jika kategori belum dipilih, maka akan menampilkan pesan error
                  return 'Pilih kategori';
                }

                return null;
              },
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: _simpan,
              icon: const Icon(Icons.save),
              label: const Text('Tambah Barang'),
            ),
          ],
        ),
      ),
    );
  }
}