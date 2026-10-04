# Bagian A — Layout Kartu Profil

## Tujuan

Membuat kartu profil menggunakan `Padding`, `Container`, `Row`, `Column`, `Expanded`, `CircleAvatar`, `SizedBox`, dan `Text`.

## Kode

```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum 2',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 32,
                child: Icon(
                  Icons.person,
                  size: 32,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Ilham Firmansyah',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('20240801102'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```

## Struktur Layout

```text
Padding
└── Container
    └── Row
        ├── CircleAvatar
        ├── SizedBox
        └── Expanded
            └── Column
                ├── Text
                └── Text

```

## Penjelasan

* **Padding**: Memberikan jarak dari tepi layar.
* **Container**: Menjadi wadah kartu profil.
* **Row**: Menyusun avatar dan informasi secara horizontal.
* **CircleAvatar**: Menampilkan ikon pengguna.
* **SizedBox**: Memberikan jarak antara avatar dan teks.
* **Expanded**: Menggunakan sisa ruang pada `Row`.
* **Column**: Menyusun nama dan NIM secara vertikal.

## Checkpoint

Kartu profil menampilkan avatar di sebelah kiri serta nama dan NIM di sebelah kanan.