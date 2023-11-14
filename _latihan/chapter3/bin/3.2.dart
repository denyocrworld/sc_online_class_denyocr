import 'dart:convert';

String jsonString = """
{
   "productName": "Laptop",
   "productPrice": 1000,
   "productCategory": "Electronics"
}
""";

// TODO: Buatlah model Product berdasarkan jsonString di atas!
// Kamu boleh membuatnya manual atau menggunakan alat bantu seperti Quicktype atau ekstensi VSCode!
class Product {}

void main() {
  // Setelah membuat model-nya, uncomment kode ini
  // Jalankan script dengan perintah:
  // dart bin/3.2.dart
  // nodemon --exec dart bin/3.2.dart

  // Product product = Product.fromJson(jsonDecode(jsonString));
  // checker(product);
}

// TODO: Kode dibawah ini tidak boleh di edit!
void checker(dynamic product) {
  print(product);
  List<bool> conditions = [
    product.productName == "Laptop",
    product.productPrice == 1000,
    product.productCategory == "Electronics",
  ];

  if (conditions.contains(false)) {
    print("");
    return;
  }
  print("Correct answer!");
}
