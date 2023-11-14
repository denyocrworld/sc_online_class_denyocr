class Rumah {
  int lantai = 2;
  int? kamar;

  //required
  //nullable
  //nullable with default value
  Rumah({
    required this.lantai,
    this.kamar = 5,
  });

  void menyalakanLampu() {
    print("Semua lampu rumah menyala");
  }

  void menyalakanLampuToilet() {
    print("Lampu di toilet menyala");
  }

  void mematikanLampuToilet() {
    print("Lampu di toilet mati");
  }

  void updateJumlahKamar(int jumlahKamarYangBaru) {
    kamar = jumlahKamarYangBaru;
  }
}
