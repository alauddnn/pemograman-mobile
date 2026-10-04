# Praktikum Pemrograman Mobile — Pertemuan 3

## Flutter Fundamental
*Pertemuan 3: Form Input dan State Management*

## 1. Tujuan Pembelajaran
Setelah menyelesaikan praktikum Pertemuan 3, mahasiswa diharapkan mampu:
1. Mengambil input pengguna menggunakan `TextField` dan `TextEditingController`.
2. Membuat form dengan validasi menggunakan `Form` dan `TextFormField`.
3. Menggunakan dropdown dan checkbox pada form.
4. Menjelaskan keterbatasan `setState` ketika data digunakan oleh banyak halaman.
5. Menerapkan state management dasar menggunakan `ChangeNotifier` dan `Provider`.
6. Membedakan penggunaan `context.watch` dan `context.read`.

## 2. Alat dan Bahan
Peralatan yang digunakan:
- Flutter SDK.
- Visual Studio Code atau Android Studio.
- Emulator atau perangkat Android dari pertemuan sebelumnya.
- Project Flutter baru.
- Koneksi internet untuk mengunduh package `provider`.

Project dapat dibuat dengan:
```bash
flutter create praktikum_3

```

## 3. Teori Singkat

### 3.1 TextField

`TextField` digunakan untuk menerima input teks dari pengguna. Nilai input dapat dibaca menggunakan `TextEditingController`. Controller perlu dilepas menggunakan `dispose()` ketika tidak lagi digunakan.

### 3.2 Form dan Validasi

`Form` digunakan untuk mengelompokkan beberapa input yang perlu divalidasi. `Form` menggunakan `GlobalKey<FormState>`. Validasi dijalankan dengan `validate()`. Setiap `TextFormField` dapat memiliki `validator`. Validator menghasilkan pesan error ketika data tidak valid, atau `null` ketika data valid.

### 3.3 State

State adalah data yang dapat berubah dan memengaruhi tampilan aplikasi. Secara umum terdapat:

#### Ephemeral State

State lokal yang biasanya hanya digunakan oleh satu widget.

Contoh:

* Checkbox yang dicentang.
* Nilai sementara pada satu halaman.

Tool yang digunakan: `setState`

#### App State

State yang perlu dibagikan oleh banyak widget atau halaman.

Contoh:

* Daftar tugas.
* Keranjang belanja.

Salah satu solusi yang digunakan pada praktikum ini adalah `Provider`.

### 3.4 Provider

Provider memungkinkan objek state diletakkan di atas widget tree sehingga widget yang membutuhkan data dapat mengaksesnya. Pada praktikum digunakan:

* `ChangeNotifier`
* `ChangeNotifierProvider`
* `notifyListeners()`

Ketika data berubah dan `notifyListeners()` dipanggil, widget yang berlangganan dapat diperbarui.

### 3.5 context.watch dan context.read

#### `context.watch<T>()`

Digunakan ketika widget perlu membaca data sekaligus ikut membangun ulang ketika data berubah. Umumnya digunakan di dalam `build()`.

#### `context.read<T>()`

Digunakan untuk membaca model tanpa membuat widget ikut membangun ulang. Umumnya digunakan pada callback seperti `onPressed`.

## 4. Langkah Praktikum

### Bagian A — Input Dasar dengan TextField

Pada bagian ini dibuat halaman input nama.

Konsep yang dipelajari:

* `TextField`
* `TextEditingController`
* `setState`
* `dispose`

Pengguna mengetik nama kemudian menekan tombol Sapa. Nama yang dimasukkan akan digunakan untuk menampilkan sapaan pada halaman.

**Checkpoint:**

* Pengguna dapat mengetik nama.
* Tombol Sapa dapat ditekan.
* Sapaan tampil di bawah input.
* Controller dilepas melalui `dispose()`.

Dokumentasi: `praktikum/bagian-a-input-dasar/`

### Bagian B — Form dengan Validasi

Bagian ini membuat form pendaftaran yang memiliki beberapa input:

* Nama lengkap.
* Email.
* Jurusan.
* Persetujuan melalui checkbox.

Validasi yang diterapkan:

* Nama wajib diisi.
* Email harus memiliki format yang valid.
* Jurusan wajib dipilih.
* Tombol Daftar hanya aktif setelah checkbox persetujuan dicentang.

Jika data valid, aplikasi menampilkan `SnackBar`.

**Checkpoint:**

1. Tombol Daftar tidak aktif sebelum checkbox dicentang.
2. Nama kosong menghasilkan pesan error.
3. Email yang tidak sesuai menghasilkan pesan error.
4. Jurusan wajib dipilih.
5. Data valid menghasilkan `SnackBar`.

Dokumentasi: `praktikum/bagian-b-form-validasi/`

### Bagian C — Mengapa Butuh State Management?

Pada aplikasi sederhana, `setState()` dapat digunakan untuk state lokal. Namun ketika data harus digunakan oleh beberapa halaman, pemindahan data melalui constructor dan callback dapat menjadi semakin rumit.

Contoh pada aplikasi daftar tugas:

```text
Halaman Daftar
      ↕
  Data Tugas
      ↕
Halaman Tambah

```

Kedua halaman membutuhkan data yang sama. Untuk kondisi seperti ini digunakan state management dengan state bersama menggunakan `Provider`.

Dokumentasi: `praktikum/bagian-c-state-management/`

### Bagian D — Aplikasi Daftar Tugas dengan Provider

Aplikasi daftar tugas menggunakan:

* `ChangeNotifier`
* `ChangeNotifierProvider`
* `context.watch`
* `context.read`
* `notifyListeners`
* `ListView.builder`
* `Navigator`

Model tugas memiliki: `judul`, `selesai`.

Model menyediakan operasi: `tambah()`, `toggle()`, `hapus()`.

Halaman daftar menampilkan jumlah tugas yang sudah selesai. Pengguna dapat:

* Menambahkan tugas.
* Mencentang tugas.
* Menghapus tugas.
* Membuka halaman tambah tugas.

Dokumentasi: `praktikum/bagian-d-provider/`

## 5. Latihan Mandiri

### Latihan 1 — Validasi Tambah Tugas

Tambahkan validasi agar judul tugas memiliki minimal 3 karakter.

Gunakan: `Form`, `TextFormField`, `validator`.

Dokumentasi: `latihan-1-validasi-tambah/`

### Latihan 2 — Menghapus Semua Tugas Selesai

Tambahkan method `hapusSelesai()` pada `TugasModel`. Tambahkan tombol pada `AppBar` untuk menghapus seluruh tugas yang sudah selesai.

Dokumentasi: `latihan-2-hapus-selesai/`

### Latihan 3 — SnackBar

Setelah tugas berhasil disimpan, tampilkan pesan: *"Tugas ditambahkan"* menggunakan `SnackBar`.

Dokumentasi: `latihan-3-snackbar/`

### Latihan 4 — Daftar Kosong

Ketika belum ada tugas, tampilkan: *"Belum ada tugas"* di tengah layar.

Dokumentasi: `latihan-4-daftar-kosong/`

## 6. Tugas — Daftar Belanja

Buat aplikasi **Daftar Belanja**.

### Halaman Form Tambah

Form harus memiliki:

* Nama barang dan wajib diisi.
* Jumlah dan wajib diisi.
* Jumlah harus berupa angka lebih dari 0.
* Kategori menggunakan dropdown.
* Validasi diterapkan pada setiap input.

### Halaman Daftar

Halaman daftar harus:

* Menampilkan semua barang.
* Memungkinkan barang dicentang sebagai sudah dibeli.
* Memungkinkan barang dihapus.
* Menampilkan jumlah barang yang belum dibeli pada `AppBar`.

### State Management

State aplikasi disimpan pada satu `ChangeNotifier` dan dibagikan menggunakan `Provider`.

### Pengumpulan

Kumpulkan:

1. Screenshot halaman form.
2. Screenshot halaman daftar.
3. Screenshot yang memperlihatkan pesan error validasi.
4. Berkas `main.dart` atau tautan repository GitHub.

## 7. Rubrik Penilaian

| Komponen | Bobot |
| --- | --- |
| Bagian A–D berjalan / checkpoint | 35% |
| Latihan mandiri | 20% |
| Tugas Daftar Belanja | 35% |
| Kerapian kode dan penamaan | 10% |
| **Total** | **100%** |

## 8. Pertanyaan Refleksi

1. Mengapa `TextEditingController` harus di-`dispose()`?
2. Kapan cukup menggunakan `setState`, dan kapan sebaiknya beralih ke `Provider`?
3. Apa yang terjadi jika `notifyListeners()` lupa dipanggil?
4. Mengapa pada `onPressed` digunakan `context.read`, bukan `context.watch`?

## 9. Troubleshooting Umum

| Masalah | Solusi |
| --- | --- |
| Provider tidak ditemukan | Pastikan `ChangeNotifierProvider` berada di atas widget yang membutuhkannya |
| Tampilan tidak berubah setelah data berubah | Periksa `notifyListeners()` dan penggunaan `context.watch` atau `Consumer` |
| Package provider tidak ditemukan | Jalankan `flutter pub get` lalu restart aplikasi |
| Validasi tidak bereaksi | Pastikan `Form` memiliki key dan input menggunakan `TextFormField` |
| Keyboard menutupi form / terjadi overflow | Gunakan `ListView` atau `SingleChildScrollView` sebagai induk form |

## 10. Referensi

* Flutter Forms
* Flutter State Management
* Package Provider

## Ringkasan Pertemuan 3

Pada Pertemuan 3 dipelajari:

1. `TextField`
2. `TextEditingController`
3. `dispose()`
4. `Form`
5. `TextFormField`
6. Validasi input
7. Dropdown
8. Checkbox
9. `SnackBar`
10. Perbedaan state lokal dan app state
11. `ChangeNotifier`
12. `Provider`
13. `context.watch`
14. `context.read`
15. Berbagi state antar halaman
16. Aplikasi Daftar Tugas
17. Aplikasi Daftar Belanja

## Identitas

* **Nama:** Alauddin
* **NIM:** 20240801164
* **Mata Kuliah:** Pemrograman Mobile
* **Pertemuan:** 3

```

```