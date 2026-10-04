```markdown
# Bagian D — Aplikasi Hello Flutter

## Tujuan
Membuat aplikasi Flutter sederhana yang menampilkan teks nama mahasiswa.

## Langkah
Ganti isi `lib/main.dart` dengan kode berikut:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum 1',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello Flutter'),
        ),
        body: const Center(
          child: Text(
            'Halo, nama saya Ilham Firmansyah!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}

```

## Penjelasan

Struktur widget:

```
MaterialApp
└── Scaffold
    ├── AppBar
    └── Center
        └── Text

```

* **MaterialApp** digunakan sebagai root aplikasi.
* **Scaffold** menyediakan struktur dasar halaman.
* **AppBar** menampilkan bar atas aplikasi.
* **Center** menempatkan widget pada posisi tengah.
* **Text** menampilkan tulisan.

## Hot Reload

Setelah kode disimpan, gunakan hot reload untuk melihat perubahan tanpa melakukan restart penuh aplikasi.

## Checkpoint

* [ ] Tampilan menampilkan **Hello Flutter** pada AppBar.
* [ ] Tampilan menampilkan **Halo, nama saya Ilham Firmansyah!** di bagian tengah.
