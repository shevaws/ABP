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