/*
Soal 1: Penentuan Bilangan Positif atau Negatif
Buat program Dart yang meminta pengguna memasukkan sebuah bilangan. Program tersebut kemudian harus menentukan apakah bilangan tersebut adalah positif atau negatif, lalu mencetak hasilnya.
*/

void main() {
  int number = 52;
  // %

  print(1 % 2);
  print(2 % 2);
  print(3 % 2);
  print(4 % 2);
  print(5 % 2);

  bool isGenap = number % 2 == 0;
  bool isGanjil = number % 2 != 0;

  // if (isGenap) {
  //   print("$number adalah bilangan Genap");
  // } else {
  //   print("$number adalah bilangan Ganjil");
  // }

  print("$number adalah bilangan ${isGenap ? "Genap" : "Ganjil"}");
}
