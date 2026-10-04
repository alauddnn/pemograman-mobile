# Bagian F — Widget Interaktif (StatefulWidget)

## Tujuan
Membuat aplikasi counter menggunakan `StatefulWidget` dan `setState()`.

## Kode
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
      home: const CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Saya'),
      ),
      body: Center(
        child: Text(
          '$_count',
          style: const TextStyle(fontSize: 48),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        child: const Icon(Icons.add),
      ),
    );
  }
}

```

## Penjelasan

### StatefulWidget

`CounterPage` dibuat sebagai `StatefulWidget` karena nilai counter dapat berubah.

### Variabel State

```dart
int _count = 0;

```

Menyimpan nilai counter.

### setState()

```dart
setState(() => _count++);

```

Digunakan untuk mengubah nilai `_count` sekaligus memberi tahu Flutter bahwa tampilan perlu diperbarui.

### FloatingActionButton

Tombol `+` digunakan untuk menambah nilai counter.

## Alur

```
Tekan tombol +
      ↓
_count bertambah
      ↓
setState()
      ↓
Widget dibangun kembali
      ↓
Angka pada layar berubah

```

## Checkpoint

* [ ] Angka pada aplikasi bertambah setiap kali tombol `+` ditekan.
