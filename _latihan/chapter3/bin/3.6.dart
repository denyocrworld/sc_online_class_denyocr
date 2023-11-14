import 'dart:convert';

String jsonString = """
{
   "carName": "Tesla Model 3",
   "manufacturer": "Tesla, Inc.",
   "productionYear": 2021,
   "features": ["Electric", "Autopilot", "Smart Summon"]
}
""";

// TODO: Buatlah model Car berdasarkan jsonString di atas!
// Kamu boleh membuatnya manual atau menggunakan alat bantu seperti Quicktype atau ekstensi VSCode!

class Car {}

void main() {
  // Setelah membuat model-nya, uncomment kode ini
  // Jalankan script dengan perintah:
  // dart bin/3.6.dart
  // nodemon --exec dart bin/3.6.dart

  // Car car = Car.fromJson(jsonDecode(jsonString));
  // checker(car);
}

// TODO: Kode dibawah ini tidak boleh di edit!
void checker(dynamic car) {
  print(car);
  List<bool> conditions = [
    car.carName == "Tesla Model 3",
    car.manufacturer == "Tesla, Inc.",
    car.productionYear == 2021,
    List<String>.from(car.features).toString() ==
        '[Electric, Autopilot, Smart Summon]',
  ];

  if (conditions.contains(false)) {
    print("Jawaban salah!");
    return;
  }
  print("Correct answer!");
}
