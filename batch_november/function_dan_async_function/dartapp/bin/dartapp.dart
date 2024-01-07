/*
Bahasa Pemrograman
  Dart
    Variable
    IF Statement
    Looping
    OOP

Framework
  Flutter

Perbanyak Latihan
  Slicing UI
    - Cari refererensi dari Dribbble, UI.NET, Google, Desain Aplikasi di Facebook/Linkedin
    - Bikin UI Aplikasi Populer
        Gojek, Tokopedia, Shopee, Tiktok, NetFlix
  Integrasi ke API
    - Fitur Login and Get Token
    - CRUD
  Logic
    Perbanyak latihan di Codewars, HackerRank, LeetCode 
    atau Mengerjakan MagicBook
- Login
    email, password
- Register
    email, password, confirm_password
- Dashboard
- List
    ProductList
    CustomerList
    UserList
    OrderList
- Form
    ProductForm
    CustomerForm
    UserForm
--------------------------------
UI/UX Designer

Template
  - Ecommerce
  - POS

chapter0
*/

Future getProductCategories(int id) async {
  //--------
}

Future getProducts() async {
  var category = await getProductCategories(1);
  return [];
}

Future getUsers() async {
  return [];
}

void main() async {
  getProducts().then((value) {});
  getUsers().then((value) {});
}
