# Bagian C — Mengapa Butuh State Management?

## State Lokal
Pada aplikasi sederhana, state dapat disimpan di satu halaman menggunakan:
```dart
setState()

```

Contoh penggunaan:

* Checkbox
* Teks sementara
* Nilai input pada satu halaman

## Masalah Ketika Aplikasi Membesar

Bayangkan aplikasi daftar tugas:

```text
Halaman Daftar
      ↕
  Data Tugas
      ↕
Halaman Tambah

```

Halaman daftar dan halaman tambah sama-sama membutuhkan data tugas. Jika data terus dikirim menggunakan constructor dan callback antar-halaman, struktur kode akan menjadi semakin rumit.

## State Bersama

Solusinya adalah menempatkan data pada satu objek bersama yang dapat diakses oleh beberapa widget atau halaman. Pada praktikum ini digunakan:

* `ChangeNotifier`
* `Provider`

## Ringkasan Konsep

* **State lokal:** `setState()`
* **State bersama:** `ChangeNotifier` + `Provider`

*Catatan: Bagian C merupakan pembahasan konsep sebelum implementasi Provider di Bagian D.*
