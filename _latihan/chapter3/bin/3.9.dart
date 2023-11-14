import 'dart:convert';

String jsonString = """
{
   "storeName": "Tech Mart",
   "address": {
      "street": "123 Main Street",
      "city": "Techville",
      "zipCode": "12345"
   },
   "products": [
      {
         "productName": "Smartphone",
         "price": 500
      },
      {
         "productName": "Laptop",
         "price": 1000
      }
   ],
   "isOpen": true
}
""";

// TODO: Buatlah model Store, Address, dan Product berdasarkan jsonString di atas!
// Kamu boleh membuatnya manual atau menggunakan alat bantu seperti Quicktype atau ekstensi VSCode!

class Address {}

class Product {}

class Store {}

void main() {
  // Setelah membuat model-nya, uncomment kode ini
  // Jalankan script dengan perintah:
  // dart bin/3.9.dart
  // nodemon --exec dart bin/3.9.dart

  // Store store = Store.fromJson(jsonDecode(jsonString));
  // checker(store);
}

// TODO: Kode dibawah ini tidak boleh di edit!
void checker(dynamic store) {
  print(store);
  List<bool> conditions = [
    store.storeName == "Tech Mart",
    store.address.street == "123 Main Street",
    store.products.length == 2,
    store.products[1].productName == "Laptop",
    store.isOpen == true,
  ];

  if (conditions.contains(false)) {
    print("Jawaban salah!");
    return;
  }
  print("Correct answer!");
}
