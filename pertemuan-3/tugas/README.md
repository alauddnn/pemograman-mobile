# Tugas Pertemuan 3 — Daftar Belanja

## Deskripsi
Tugas Pertemuan 3 adalah membuat aplikasi **Daftar Belanja** menggunakan Flutter.
Aplikasi menerapkan konsep:
- Form input
- Validasi data
- Dropdown
- Checkbox
- ListView
- Navigasi antar halaman
- `ChangeNotifier`
- `Provider`
- `context.watch`
- `context.read`

---

## Ketentuan Tugas

Berdasarkan modul Pertemuan 3, aplikasi memiliki dua bagian utama:

### 1. Halaman Form Tambah
Form menyediakan input:
- Nama barang
- Jumlah barang
- Kategori barang

Ketentuan validasi:
- Nama barang wajib diisi.
- Jumlah barang wajib diisi.
- Jumlah barang harus berupa angka.
- Jumlah barang harus lebih dari 0.
- Kategori wajib dipilih melalui dropdown.
- Setiap input menerapkan validasi dengan pesan yang sesuai.

### 2. Halaman Daftar
Halaman daftar memuat fitur:
- Menampilkan seluruh daftar barang belanja.
- Memungkinkan barang dicentang sebagai sudah dibeli (`Checkbox`).
- Memungkinkan barang dihapus dari daftar.
- Menampilkan jumlah barang yang belum dibeli pada `AppBar`.

### 3. State Management
State aplikasi disimpan pada satu `ChangeNotifier` dan dibagikan ke seluruh halaman menggunakan `Provider`.

---

## Identitas
- **Nama:** Alauddin
- **NIM:** 20240801164
- **Jurusan:** Teknik Informatika
- **Mata Kuliah:** Pemrograman Mobile
- **Pertemuan:** 3

---

## Struktur Tugas
```text
tugas/
├── README.md
└── daftar_belanja/
    ├── README.md
    ├── images/
    ├── lib/
    │   └── main.dart
    └── ...