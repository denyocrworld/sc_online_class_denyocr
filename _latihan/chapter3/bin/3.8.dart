import 'dart:convert';

String jsonString = """
{
   "orderNumber": "12345",
   "customer": {
      "name": "John Doe",
      "email": "johndoe@example.com"
   },
   "products": [
      {
         "productName": "Smartphone",
         "quantity": 2,
         "price": 500
      },
      {
         "productName": "Laptop",
         "quantity": 1,
         "price": 1000
      }
   ],
   "totalAmount": 2000
}
""";

// TODO: Buatlah model Order, Customer, dan Product berdasarkan jsonString di atas!
// Kamu boleh membuatnya manual atau menggunakan alat bantu seperti Quicktype atau ekstensi VSCode!

class Product {}

class Customer {}

class Order {}

void main() {
  // Setelah membuat model-nya, uncomment kode ini
  // Jalankan script dengan perintah:
  // dart bin/3.8.dart
  // nodemon --exec dart bin/3.8.dart
  // Order order = Order.fromJson(jsonDecode(jsonString));
  // checker(order);
}

// TODO: Kode dibawah ini tidak boleh di edit!
void checker(dynamic order) {
  print(order);
  List<bool> conditions = [
    order.orderNumber == "12345",
    order.customer.name == "John Doe",
    order.products.length == 2,
    order.products[0].price == 500,
    order.totalAmount == 2000,
  ];

  if (conditions.contains(false)) {
    print("Jawaban salah!");
    return;
  }
  print("Correct answer!");
}
