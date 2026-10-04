# Aplikasi Daftar Belanja

## Tugas Pertemuan 3 — Pemrograman Mobile

Aplikasi *Daftar Belanja* merupakan tugas utama pada Praktikum Pemrograman Mobile Pertemuan 3 dengan topik *Form Input dan State Management*.

Aplikasi ini dibuat menggunakan Flutter dan menerapkan form dengan validasi, dropdown, state management menggunakan `ChangeNotifier`, serta `Provider` untuk berbagi state antara halaman form dan halaman daftar.

---

## 1. Identitas

| Keterangan | Data |
| --- | --- |
| Nama | Alauddin |
| NIM | 20240801164 |
| Jurusan | Teknik Informatika |
| Mata Kuliah | Pemrograman Mobile |
| Pertemuan | 3 |
| Topik | Form Input dan State Management |

---

## 2. Deskripsi Aplikasi

Aplikasi Daftar Belanja terdiri dari dua halaman utama:
1. **Halaman Daftar Belanja**
2. **Halaman Form Tambah Barang**

Halaman daftar digunakan untuk melihat seluruh barang yang telah ditambahkan, menandai barang sebagai sudah dibeli, dan menghapus barang.

Halaman form digunakan untuk memasukkan barang baru dengan validasi pada setiap input.

State aplikasi dikelola menggunakan satu `ChangeNotifier` dan dibagikan kepada widget menggunakan `Provider`.

---

## 3. Tujuan Pembuatan

Aplikasi ini dibuat untuk menerapkan materi yang dipelajari pada Pertemuan 3, yaitu:
- `TextField` dan `TextEditingController`
- `Form`
- `TextFormField`
- Validasi input
- `DropdownButtonFormField`
- `Checkbox`
- `ChangeNotifier`
- `ChangeNotifierProvider`
- `context.watch`
- `context.read`
- `notifyListeners`
- `ListView.builder`
- `Navigator.push`
- `Navigator.pop`

---

## 4. Ketentuan Tugas

Berdasarkan modul Pertemuan 3, aplikasi Daftar Belanja memiliki ketentuan berikut:

### Halaman Form Tambah
Form harus memiliki:
- Nama barang.
- Jumlah barang.
- Kategori barang.

Setiap input harus memiliki validasi.

#### Validasi Nama
Nama barang wajib diisi.

#### Validasi Jumlah
Jumlah barang:
- Wajib diisi
- Harus berupa angka
- Harus lebih dari 0

#### Validasi Kategori
Kategori barang wajib dipilih melalui dropdown.

### Halaman Daftar
Halaman daftar harus:
- Menampilkan seluruh barang.
- Menampilkan jumlah barang.
- Memungkinkan barang dicentang sebagai sudah dibeli.
- Memungkinkan barang dihapus.
- Menampilkan jumlah barang yang belum dibeli pada `AppBar`.

### State Management
State aplikasi disimpan pada satu `ChangeNotifier`.

State dibagikan menggunakan `ChangeNotifierProvider`.

Widget membaca state menggunakan `context.watch<BelanjaModel>()` dan menjalankan aksi terhadap model menggunakan `context.read<BelanjaModel>()`.

---

## 5. Struktur Data

Setiap barang disimpan dalam objek `BarangBelanja`.

```dart
class BarangBelanja {
  final String nama;
  final int jumlah;
  final String kategori;
  bool sudahDibeli;

  BarangBelanja({
    required this.nama,
    required this.jumlah,
    required this.kategori,
    this.sudahDibeli = false,
  });
}