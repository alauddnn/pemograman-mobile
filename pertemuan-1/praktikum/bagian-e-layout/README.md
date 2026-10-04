# Bagian E — Widget Layout Dasar

## Tujuan
Menyusun beberapa widget secara vertikal menggunakan `Column`.

## Kode
Ganti bagian `body` menjadi:

```dart
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Icon(
        Icons.flutter_dash,
        size: 80,
        color: Colors.blue,
      ),
      SizedBox(height: 16),
      Text(
        'Halo, saya Alauddin',
        style: TextStyle(fontSize: 24),
      ),
      Text('NIM: 20240801164'),
    ],
  ),
),

```

## Struktur Widget

```
Center
└── Column
    ├── Icon
    ├── SizedBox
    ├── Text
    └── Text

```

## Penjelasan

* **Center**: Menempatkan `Column` di tengah layar.
* **Column**: Menyusun widget anak secara vertikal.
* **mainAxisAlignment**: Nilai `MainAxisAlignment.center` digunakan agar posisi isi `Column` berada tepat di tengah.
* **Icon**: Menampilkan ikon bawaan Flutter.
* **SizedBox**: Memberikan jarak vertikal antar-widget.
* **Text**: Menampilkan nama dan NIM mahasiswa.

## Checkpoint

* [ ] Menampilkan ikon Flutter.
* [ ] Menampilkan nama mahasiswa.
* [ ] Menampilkan NIM.
* [ ] Ketiga komponen tersusun vertikal di tengah layar.
