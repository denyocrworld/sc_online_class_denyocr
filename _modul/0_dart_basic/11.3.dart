class Goku {
  void terbang() {
    print('Goku dapat terbang');
  }

  void kamehameha() {
    print('Goku dapat menggunakan Kamehameha');
  }
}

class Gohan extends Goku {
  @override
  void terbang() {
    print("Gohan dapat terbang");
  }

  void masenko() {
    print('Gohan dapat menggunakan Masenko');
  }
}

void main() {
  Gohan gohan = Gohan();
  gohan.terbang(); // Menggunakan method dari class Goku
}
