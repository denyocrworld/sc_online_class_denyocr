class Goku {
  isiEnergi() {
    print("Sedang mengisi energi");
  }
}

class Gohan extends Goku {
  @override
  isiEnergi() {
    print("Isi energi gohan");
    super.isiEnergi();
  }
}
