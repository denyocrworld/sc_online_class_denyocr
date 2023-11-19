//camelCase
//createProduct   v
//create_product  x
//CreateProduct  x
//Create Product  x
//Selalu gunakan prefix

// product() {}
// menambahkan product?
// menghapus product?
// update product?
// get products?

getProducts() {}
createProduct() {}
updateProduct() {}
deleteProduct() {}

void printSomething({
  required String message,
  bool? isAdmin = false,
}) {
  print(message);
  print("isAdmin: $isAdmin");
}

//              argument/parameter
double getBonus(double sales, [double? duration = 10]) {
  double bonus = 0;

  if (sales >= 200) {
    bonus = 10000;
    return bonus;
  } else if (sales >= 100) {
    bonus = 5000;
    return bonus;
  } else if (sales >= 50) {
    bonus = 1000;
    return bonus;
  }

  print("Sales: $sales");
  print("Bonus: $bonus");

  return bonus;
}

void main() {
  /*
  Buatlah sebuah function untuk menghitung bonus
  berdasarkan jumlah penjualan minuman
  jika:
    penjualan >= 100, bonusnya adalah 5000
    penjualan >= 200, bonusnya adalah 10000
    penjualan >= 50, bonusnya adalah 3000
  */

  double bonus = getBonus(300);
  print("----");
  print("Bonus: $bonus");

  printSomething(
    message: "Help!",
  );

  // akan dikirim ke server
  // akan disimpan local database
  // akan diproses lagi

  // getBonus(200);
  // getBonus(150);

  // double bonus = 0;
  // double sales = 300;

  // if (sales >= 200) {
  //   bonus = 10000;
  // } else if (sales >= 100) {
  //   bonus = 5000;
  // } else if (sales >= 50) {
  //   bonus = 1000;
  // }

  // print("Sales: $sales");
  // print("Bonus: $bonus");

  // //------------

  // double bonus2 = 0;
  // double sales2 = 150;

  // if (sales2 >= 200) {
  //   bonus2 = 10000;
  // } else if (sales2 >= 100) {
  //   bonus2 = 5000;
  // } else if (sales >= 50) {
  //   bonus = 1000;
  // }

  // print("Sales: $sales2");
  // print("Bonus: $bonus2");
}
