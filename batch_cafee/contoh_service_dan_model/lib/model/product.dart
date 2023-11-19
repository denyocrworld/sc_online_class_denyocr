/*
{
    "id": 10,
    "created_at": "2023-10-12T14:24:25.992427Z",
    "date": "Thursday, 12 October 2023",
    "time": "14:24:25",
    "product_name": "Handcrafted Plastic Pizza",
    "price": 119
},
*/
class Product {
  int id;
  String? dateTime;
  String? time;
  String? productName;
  double? price;

  Product({
    required this.id,
    required this.dateTime,
    required this.time,
    required this.productName,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        dateTime: json["date_Time"],
        time: json["time"],
        productName: json["product_name"],
        price: json["price"],
      );
}
