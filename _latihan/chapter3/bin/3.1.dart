// Contoh JSON
import 'dart:convert';

String jsonString = """
{
   "name": "Alex",
   "age": 24,
   "city": "Bogor"
}
""";

// TODO: Buatlah model Customer berdasarkan jsonString di atas!
// Kamu boleh membuatnya manual, dengan quicktype ataupun hiranta json to dart extension!
class Customer {}

void main() {
  // Setelah membuat model-nya, uncomment kode ini
  // Jalankan script dengan perintah:
  // dart bin/3.1.dart
  // nodemon --exec dart bin/3.1.dart

  // Customer customer = Customer.fromJson(jsonDecode(jsonString));
  // checker(customer);
}

//TODO: Kode dibawah ini tidak boleh di edit!
void checker(dynamic customer) {
  print(customer);
  List<bool> conditions = [
    customer.name == "Alex",
    customer.age == 24,
    customer.city == "Bogor",
  ];

  if (conditions.contains(false)) {
    print("");
    return;
  }
  print("Correct answer!");
}
