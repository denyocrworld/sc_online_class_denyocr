void main() {
  int usia = 25;
  bool adalahMahasiswa = true;

  bool isEligible = usia >= 18 && adalahMahasiswa;
  if (isEligible) {
    print("Anda adalah mahasiswa dewasa.");
  }
}
