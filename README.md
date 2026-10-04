# Pemrograman Mobile

Repository pembelajaran dan praktikum *Pemrograman Mobile* menggunakan *Flutter dan Dart*.

Repository ini berisi dokumentasi materi, langkah-langkah praktikum, latihan mandiri, source code, dan tugas dari setiap pertemuan.

Project ini dibuat sebagai dokumentasi proses pembelajaran selama mengikuti mata kuliah Pemrograman Mobile.

## Identitas

| Keterangan | Data |
| --- | --- |
| Nama | Alauddin |
| NIM | 20240801164 |
| Jurusan | Teknik Informatika |
| Mata Kuliah | Pemrograman Mobile |
| Framework | Flutter |
| Bahasa | Dart |

## Daftar Pertemuan

Repository ini disusun berdasarkan pertemuan pada mata kuliah Pemrograman Mobile.

Setiap folder pertemuan memiliki struktur:
```text
pertemuan-x/
├── README.md
├── doc-tugas/
├── praktikum/
└── tugas/

```

### Keterangan Struktur

| Folder | Isi |
| --- | --- |
| README.md | Catatan materi pembelajaran berdasarkan modul |
| doc-tugas/ | Modul/dokumen asli yang diberikan |
| praktikum/ | Langkah praktikum, source code, dan latihan mandiri |
| tugas/ | Tugas utama pada pertemuan tersebut |

---

## 🟦 Pertemuan 1 — Flutter Fundamental

### Topik

*Pengenalan Flutter, Instalasi, dan Aplikasi Pertama*

Materi yang dipelajari:

* Pengenalan Flutter dan Dart
* Instalasi dan verifikasi Flutter
* `flutter doctor`
* Membuat project Flutter
* Struktur project Flutter
* `MaterialApp`, `Scaffold`, `AppBar`, `Center`, `Column`, `Text`, `Icon`, `SizedBox`
* `StatelessWidget` dan `StatefulWidget`
* `setState()` dan Hot reload
* Aplikasi Counter

### Latihan Mandiri

* Mengubah warna AppBar dan teks
* Menambahkan tombol decrement dan reset
* Mencegah nilai counter menjadi negatif

### Tugas

Membuat aplikasi *Kartu Perkenalan* yang menampilkan foto/ikon, nama, NIM, jurusan, dan hobi.

---

## 🟩 Pertemuan 2 — Layout, ListView, dan Navigasi

### Topik

*Layout, ListView, dan Navigasi Antar Halaman*

Materi yang dipelajari:

* `Container`, `Padding`, `Row`, `Column`, `Expanded`
* `ListView.builder`, `Card`, `ListTile`
* Model data menggunakan class Dart
* `Navigator.push` dan `Navigator.pop`
* Pengiriman data antar halaman
* Halaman detail

### Latihan Mandiri

Membangun dan mengembangkan aplikasi daftar menu:

* Menambahkan menu dan deskripsi
* Mengganti `Card` dengan `Container`
* Membuat sudut membulat
* Memformat harga dengan pemisah ribuan

### Tugas

Membuat aplikasi *Daftar Kontak* dengan:

* Minimal 6 kontak (nama, nomor telepon, email)
* `ListView.builder` dan `ListTile`
* Avatar berdasarkan huruf pertama nama
* Halaman detail kontak dan navigasi kembali

---

## 🟨 Pertemuan 3 — Form Input dan State Management

### Topik

*Form Input dan State Management*

Materi yang dipelajari:

* `TextField`, `TextEditingController`, `dispose()`
* `Form`, `TextFormField`, validasi input
* `Dropdown`, `Checkbox`, `SnackBar`
* State lokal dengan `setState`
* `ChangeNotifier`, `Provider`, `ChangeNotifierProvider`
* `context.watch`, `context.read`, `notifyListeners()`
* State management antar halaman

### Praktikum

Membangun aplikasi *Daftar Tugas* menggunakan Provider.
Fitur yang dipelajari:

* Menambahkan, menandai selesai, dan menghapus tugas
* Menghitung tugas selesai
* Berbagi state antar halaman

### Latihan Mandiri

* Validasi judul minimal 3 karakter
* Menghapus semua tugas selesai
* Menampilkan SnackBar setelah tugas ditambahkan
* Menampilkan pesan ketika daftar tugas kosong

### Tugas

Membuat aplikasi *Daftar Belanja* dengan:

* Form tambah barang dan validasi
* Dropdown kategori
* Status sudah dibeli (`Checkbox`) dan fitur hapus
* State management Provider

---

## 🚧 Pertemuan Berikutnya

Repository ini akan terus dikembangkan seiring bertambahnya materi praktikum.

---

## 🛠️ Teknologi

* **Flutter**
* **Dart**
* **Visual Studio Code**
* **Android SDK**
* **Provider**

---

## 📂 Struktur Repository

```text
pemrograman-mobile/
│
├── README.md
│
├── pertemuan-1/
│   ├── README.md
│   ├── doc-tugas/
│   ├── praktikum/
│   └── tugas/
│
├── pertemuan-2/
│   ├── README.md
│   ├── doc-tugas/
│   ├── praktikum/
│   └── tugas/
│
└── pertemuan-3/
    ├── README.md
    ├── doc-tugas/
    ├── praktikum/
    └── tugas/

```

---

## 📌 Status Pembelajaran

| Pertemuan | Materi | Praktikum | Latihan | Tugas |
| --- | --- | --- | --- | --- |
| Pertemuan 1 | ✅ | ✅ | ✅ | ✅ |
| Pertemuan 2 | ✅ | ✅ | ✅ | ✅ |
| Pertemuan 3 | ✅ | ✅ | ✅ | ✅ |
| Pertemuan 4 | ⏳ | ⏳ | ⏳ | ⏳ |

```

```