````md
# LAPORAN PRAKTIKUM

## APLIKASI BERBASIS PLATFORM

### MODUL 1–3: GIT, FLUTTER, DAN DART

---

**Disusun oleh:**

**Raka Andriy Shevchenko**  
**2311102054**

**Kelas IF-11-04**

**Dosen Pengampu:**  
Cahyo Prihantoro, S.Kom., M.Eng

**PROGRAM STUDI S1 TEKNIK INFORMATIKA**  
**FAKULTAS INFORMATIKA**  
**TELKOM UNIVERSITY PURWOKERTO**

**2025/2026**

---

## LINK REPOSITORY

```text
https://github.com/shevaws/ABP
````

---

# DASAR TEORI

## 1. Git

Git merupakan sistem pengontrol versi (*Version Control System* atau VCS) yang digunakan untuk mencatat perubahan pada file selama proses pengembangan perangkat lunak.

Git memungkinkan pengembang untuk melacak riwayat perubahan, mengembalikan kode ke versi sebelumnya, serta mendukung kolaborasi tim melalui fitur seperti *branching* dan *merging*.

Git termasuk dalam kategori *distributed version control system*, di mana setiap pengguna memiliki salinan lengkap repository beserta riwayat perubahannya.

Beberapa platform yang umum digunakan bersama Git antara lain GitHub, GitLab, dan Bitbucket.

## 2. Flutter

Flutter adalah framework *open-source* yang dikembangkan oleh Google untuk membangun aplikasi mobile, web, dan desktop menggunakan satu basis kode (*single codebase*).

Flutter menggunakan bahasa pemrograman Dart dan *rendering engine* Skia untuk menghasilkan antarmuka yang cepat dan konsisten di berbagai platform.

Flutter menerapkan konsep widget sebagai komponen utama penyusun antarmuka pengguna.

Widget pada Flutter dibedakan menjadi dua jenis, yaitu:

* `StatelessWidget`
* `StatefulWidget`

Selain itu, Flutter memiliki fitur *hot reload* yang memungkinkan pengembang melihat perubahan kode secara langsung tanpa perlu menjalankan ulang aplikasi.

## 3. Dart

Dart merupakan bahasa pemrograman yang dikembangkan oleh Google dan digunakan sebagai bahasa utama dalam pengembangan aplikasi Flutter.

Dart mendukung paradigma pemrograman berorientasi objek (*object-oriented programming*) dan pemrograman asinkron melalui fitur `Future`, `async`, dan `await`.

Konsep dasar yang dipelajari pada modul ini meliputi:

* Variabel
* Percabangan (*if-else*)
* Perulangan (*looping*)
* List
* Fungsi

---

# GUIDED MODUL 1

## Instalasi dan Konfigurasi Git

Langkah-langkah instalasi Git:

1. Mengunduh Git melalui website resmi:

   https://git-scm.com

2. Menjalankan installer hingga proses selesai.

3. Melakukan konfigurasi awal:

```bash
git config --global user.name "Raka Andriy Shevchenko"
git config --global user.email "2311102054@ittelkom-pwt.ac.id"
```

4. Memastikan instalasi berhasil:

```bash
git --version
```

Git berhasil dikonfigurasi dan siap digunakan untuk mengelola proyek.

## Instalasi Flutter SDK

Langkah-langkah instalasi Flutter:

1. Mengunduh Flutter SDK dari:

   https://flutter.dev

2. Mengekstrak file ke direktori tertentu.

3. Menambahkan `flutter/bin` ke environment variable.

4. Memverifikasi instalasi:

```bash
flutter doctor
```

Flutter berhasil terinstal dan seluruh dependensi utama telah terpenuhi.

## Instalasi Android Studio

Langkah-langkah instalasi Android Studio:

1. Mengunduh Android Studio dari:

   https://developer.android.com/studio

2. Menginstal Android SDK.

3. Menginstal Android Emulator.

4. Membuat virtual device melalui Device Manager.

Android Studio berhasil diinstal dan siap digunakan untuk pengembangan aplikasi Flutter.

## Instalasi Extension Visual Studio Code

Extension yang digunakan:

* Flutter
* Dart

Extension tersebut berfungsi untuk mendukung proses pengembangan aplikasi Flutter menggunakan Visual Studio Code.

---

# GUIDED MODUL 2

## Pengenalan Flutter

Pada modul ini dilakukan pembuatan project Flutter sederhana dan menjalankannya menggunakan emulator Android.

### Langkah-langkah

1. Membuat project baru:

```bash
flutter create modul2_flutter
```

2. Menjalankan aplikasi:

```bash
flutter run
```

3. Memodifikasi file `main.dart`.

### Source Code

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
      title: 'Modul 2',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modul 2: Flutter'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello World',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              'Raka Andriy Shevchenko | 2311102054',
            ),
          ],
        ),
      ),
    );
  }
}
```

### Hasil Program

Program berhasil menampilkan teks:

* Hello World
* Nama dan NIM mahasiswa

![Hasil Praktikum](SS/modul2.jpeg)

---

# GUIDED MODUL 3

## Pengenalan Dart

Pada modul ini dipelajari konsep dasar bahasa pemrograman Dart.

### Source Code

```dart
void main() {
  String nama = "Raka Andriy Shevchenko";
  int umur = 20;

  print("Nama: $nama");
  print("Umur: $umur");

  int nilai = 85;

  if (nilai >= 75) {
    print("Status: Lulus");
  } else {
    print("Status: Tidak Lulus");
  }

  print("Perulangan:");

  for (int i = 1; i <= 5; i++) {
    print("Angka ke-$i");
  }

  List<String> hobi = [
    "Coding",
    "Swimming",
    "Chess"
  ];

  print("Hobi pertama: ${hobi[0]}");

  int hasil = tambah(5, 3);

  print("Hasil penjumlahan: $hasil");
}

int tambah(int a, int b) {
  return a + b;
}
```

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
```

### Output Program

```text
Nama: Raka Andriy Shevchenko
Umur: 20
Status: Lulus

Perulangan:
Angka ke-1
Angka ke-2
Angka ke-3
Angka ke-4
Angka ke-5

Hobi pertama: Coding

Hasil penjumlahan: 8
```

Program berhasil menjalankan konsep dasar Dart, meliputi variabel, percabangan, perulangan, list, dan fungsi.

![Hasil Praktikum (Kalo Flutter)](SS/modul31.jpeg)
![Hasil Praktikum (Kalo dart)](SS/modul32.jpeg)

---

# KESIMPULAN

Berdasarkan praktikum modul 1–3, telah dilakukan instalasi dan konfigurasi Git, Flutter SDK, Android Studio, serta Visual Studio Code.

Selain itu, telah dipelajari dasar-dasar pengembangan aplikasi menggunakan Flutter dan bahasa pemrograman Dart.

Hasil praktikum menunjukkan bahwa seluruh tools dapat berjalan dengan baik dan program berhasil dieksekusi tanpa kendala.

Dengan memahami konsep dasar Git, Flutter, dan Dart, mahasiswa memiliki bekal untuk mengembangkan aplikasi berbasis multiplatform pada modul selanjutnya.

```
```
