import 'package:oop/oop.dart' as oop;

import 'alex.dart';
import 'people.dart';
import 'product_service.dart';
import 'rumah.dart';

String name = "123123";
void main() async {
  //Object

  //------------------

  // Alex alex = Alex();
  //Membuat object alex yang class-nya adalah Alex

  // alex.larinyaCepat();
  // alex.nendangnyaKenceng();

  // print("alex.kulit: ${alex.kulit}");

  // ProductService productService = ProductService();
  // var products = await productService.get("products");

  // CustomerService customerService = CustomerService();
  // var customers = await customerService.get("customers");
  // print(products.length);

  People people = People(
    name: "deny",
  );

  // People people = People(
  //   "deny",
  // );
  people.makan();

  // print(people.name);
  // print(people._age);

  // ProductService productService = ProductService();
  // var products = await productService.get("products");
  // print(products.length);

  // print(ProductService.timeout);
}
