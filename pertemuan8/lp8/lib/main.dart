import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Modul 3: Dart'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Nama: Raka Andriy Shevchenko\n'
            'Umur: 20\n'
            'Status: Lulus\n'
            'Hobi pertama: Coding\n'
            'Hasil penjumlahan: 8',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}