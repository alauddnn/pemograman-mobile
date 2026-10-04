# Praktikum Pemrograman Mobile — Pertemuan 2

## Flutter Fundamental
*Pertemuan 2: Layout, ListView, dan Navigasi Antar Halaman*

## 1. Tujuan Pembelajaran
Setelah menyelesaikan praktikum Pertemuan 2, mahasiswa diharapkan mampu:
1. Menyusun layout menggunakan `Container`, `Padding`, `Row`, `Column`, dan `Expanded`.
2. Menampilkan daftar data menggunakan `ListView.builder`, `Card`, dan `ListTile`.
3. Memodelkan data sederhana menggunakan class Dart.
4. Berpindah halaman dan mengirim data menggunakan `Navigator.push` dan `Navigator.pop`.

## 2. Alat dan Bahan
Peralatan yang digunakan:
- Flutter SDK.
- Visual Studio Code atau Android Studio.
- Emulator atau perangkat Android dari Pertemuan 1.
- Proyek Flutter baru.

Pembuatan proyek:
```bash
flutter create praktikum_2

```

## 3. Teori Singkat

### 3.1 Container

Container merupakan widget serbaguna yang dapat digunakan untuk mengatur:

* Ukuran
* Warna
* Border
* Radius
* Padding
* Margin

### 3.2 Padding

Padding digunakan untuk memberikan jarak di sekeliling widget anak.
Contoh:

```dart
Padding(
  padding: const EdgeInsets.all(16),
  child: Text('Halo'),
)

```

### 3.3 Row dan Column

Row digunakan untuk menyusun widget secara horizontal, sedangkan Column digunakan untuk menyusun widget secara vertikal.

```text
Row
├── Widget
├── Widget
└── Widget

Column
├── Widget
├── Widget
└── Widget

```

### 3.4 Expanded

Expanded digunakan agar child dapat mengisi sisa ruang yang tersedia dalam Row atau Column. Expanded juga membantu mencegah overflow ketika isi widget membutuhkan ruang yang lebih besar.

### 3.5 ListView.builder

ListView.builder digunakan untuk membuat daftar yang dirender sesuai kebutuhan sehingga cocok digunakan untuk data yang jumlahnya banyak.

### 3.6 Card dan ListTile

Card digunakan untuk membuat tampilan berbentuk kartu.
ListTile menyediakan struktur baris standar yang dapat berisi:

* `leading`
* `title`
* `subtitle`
* `trailing`

### 3.7 Navigator

Flutter menggunakan Navigator untuk mengelola tumpukan halaman.

#### Navigator.push

Digunakan untuk membuka halaman baru.

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) => HalamanBaru(),
  ),
);

```

#### Navigator.pop

Digunakan untuk menutup halaman yang sedang aktif dan kembali ke halaman sebelumnya.

```dart
Navigator.pop(context);

```

## 4. Langkah Praktikum

### Bagian A — Layout Kartu Profil

Membuat kartu profil yang menampilkan avatar, nama, dan NIM.

Widget yang digunakan:

* `Padding`
* `Container`
* `Row`
* `CircleAvatar`
* `SizedBox`
* `Expanded`
* `Column`
* `Text`

**Checkpoint:** Kartu profil menampilkan avatar di sebelah kiri dan teks di sebelah kanan.

Dokumentasi: `praktikum/bagian-a-layout-profil/`

### Bagian B — Model Data dan ListView

Membuat class `Makanan` yang memiliki data:

* `nama`
* `harga`

Data disimpan dalam `daftarMenu`. Daftar ditampilkan menggunakan:

* `ListView.builder`
* `Card`
* `ListTile`

**Checkpoint:** Empat menu tampil sebagai kartu dan dapat di-scroll.

Dokumentasi: `praktikum/bagian-b-listview/`

### Bagian C — Navigasi ke Halaman Detail

Setiap item menu dibuat agar dapat ditekan. Ketika item dipilih, `Navigator.push(...)` digunakan untuk membuka halaman detail. Data makanan dikirim melalui constructor. Untuk kembali digunakan `Navigator.pop(context);`.

**Checkpoint:** Menekan menu membuka halaman detail yang sesuai dan tombol kembali menutup halaman tersebut.

Dokumentasi: `praktikum/bagian-c-navigasi/`

## 5. Latihan Mandiri

### Latihan 1 — Menambahkan Menu

Tambahkan tiga menu baru ke `daftarMenu`. Pastikan daftar masih dapat di-scroll.

### Latihan 2 — Menambahkan Deskripsi

Tambahkan properti `deskripsi` pada class `Makanan`. Kemudian tampilkan deskripsi pada halaman detail.

### Latihan 3 — Mengganti Card dengan Container

Ganti `Card` dengan `Container`. Tambahkan:

* Warna latar
* Sudut membulat

### Latihan 4 — Format Harga

Tampilkan harga menggunakan format ribuan.

Contoh:

* `15000` → `15.000`
* `20000` → `20.000`
Gunakan fungsi buatan sendiri untuk melakukan formatting.

## 6. Tugas

### Aplikasi Daftar Kontak

Buat aplikasi **Daftar Kontak** dengan ketentuan:

* Minimal 6 kontak.
* Setiap kontak memiliki nama, nomor telepon, dan email.
* Data disimpan dalam list yang berisi objek class.
* Halaman utama menggunakan `ListView.builder`.
* Setiap kontak ditampilkan menggunakan `ListTile`.
* Avatar berisi huruf pertama nama.
* Ketika kontak diketuk, aplikasi membuka halaman detail.
* Halaman detail menampilkan seluruh data kontak.
* Terdapat tombol kembali.

### Pengumpulan

Yang dikumpulkan:

1. Tangkapan layar halaman utama.
2. Tangkapan layar halaman detail.
3. Berkas `main.dart` atau tautan repository.

## 7. Rubrik Penilaian

| Komponen | Bobot |
| --- | --- |
| Bagian A–C berjalan / checkpoint | 40% |
| Latihan mandiri | 20% |
| Tugas Daftar Kontak | 30% |
| Kerapian kode dan penamaan | 10% |
| **Total** | **100%** |

## 8. Pertanyaan Refleksi

1. Apa perbedaan `ListView` biasa dengan `ListView.builder`?
2. Mengapa `Row` yang berisi teks panjang dapat menyebabkan overflow, dan bagaimana `Expanded` membantu?
3. Bagaimana data dikirim dari halaman daftar ke halaman detail pada praktikum ini?

## 9. Troubleshooting Umum

| Masalah | Solusi |
| --- | --- |
| Garis kuning-hitam (overflow) | Gunakan `Expanded` atau `SingleChildScrollView` |
| ListView tanpa tinggi di dalam Column | Bungkus `ListView` dengan `Expanded` |
| Navigator error | Pastikan halaman berada di bawah `MaterialApp` |
| Perubahan tidak muncul | Gunakan hot restart jika mengubah `main()` atau data `const` |

## 10. Referensi

* Flutter Layout
* Flutter Cookbook — Lists
* Flutter Cookbook — Navigation

## Ringkasan Pertemuan 2

Pada Pertemuan 2 dipelajari:

1. `Container`
2. `Padding`
3. `Row`
4. `Column`
5. `Expanded`
6. `ListView.builder`
7. `Card`
8. `ListTile`
9. Model data menggunakan class Dart
10. `Navigator.push`
11. `Navigator.pop`
12. Pengiriman data dari halaman daftar ke halaman detail
13. Pembuatan aplikasi Daftar Kontak

```

```