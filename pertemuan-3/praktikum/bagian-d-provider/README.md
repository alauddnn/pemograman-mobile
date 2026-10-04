# Bagian D — Daftar Tugas dengan Provider

## Tujuan
Membuat aplikasi daftar tugas menggunakan state management **Provider**.

## Komponen
- `ChangeNotifier`
- `ChangeNotifierProvider`
- `context.watch`
- `context.read`
- `notifyListeners`
- `Navigator`
- `ListView.builder`

## Model
Setiap tugas memiliki properti:
- `judul`
- status `selesai`

## Operasi
Model `TugasModel` menyediakan fungsi:
- Tambah tugas
- Mengubah status selesai (toggle)
- Menghapus tugas

## Halaman Aplikasi

### 1. TugasPage
Menampilkan daftar tugas beserta jumlah tugas yang sudah selesai.

### 2. TambahPage
Digunakan untuk memasukkan tugas baru ke dalam daftar.

## Konsep Flow State
```text
Provider
   ↓
TugasModel
   ↓
notifyListeners()
   ↓
TugasPage diperbarui