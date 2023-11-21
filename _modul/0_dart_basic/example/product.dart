/*
final
  keyword yang bisa digunakan kalau kita mau:
  - membuat variable tersebut menjadi immutable 
    (Gak bisa di ubah ubah)

const
*/

//Membuat Class
class Product {
  static int id = 1000;
  //property|attribut    = variabel
  //method               = function
  //constructor          = function yang akan dieksekusi ketika class dibuat

  final String productName;
  final double price;

  // Product(this.productName, this.price) {
  //   print("Object product di buat");
  // }
  Product({
    required this.productName,
    required this.price,
  }) {
    print("Object product di buat");
  }

  void printProductDetail() {
    print("productName: $productName");
    print("price: $price");
  }
}

void main() {
  print(Product.id);
  Product.id = 2300;
  print(Product.id);
  return;
  //Membuat Objek Product
  //product adalah Object
  // Product product1 = Product("GG FILTER 12", 200); //disini kita membuat object

  //disini kita membuat object
  Product product1 = Product(
    productName: "GG FILTER 12",
    price: 200,
  );
  product1.printProductDetail();

  // print("-----");

  Product product2 = Product(
    productName: "SK KRETEK 21",
    price: 300,
  );
  product2.printProductDetail();
}


// Denah Rumah                            = Class
//    5 Rumah dengan desain yang sama     = Object
/*
    Rumah 1 , warna cat-nya kuning
    Rumah 2 , warna cat-nya biru
    Rumah 3 , warna cat-nya kuning
    Rumah 4 , warna cat-nya hijau
    Rumah 5 , warna cat-nya red
*/