import 'dart:convert';

import 'package:contoh_service_dan_model/model/product.dart';

class ProductResponse {
  List<Product> data;
  Meta meta;

  ProductResponse({
    required this.data,
    required this.meta,
  });

  factory ProductResponse.fromRawJson(String str) =>
      ProductResponse.fromJson(json.decode(str));

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      ProductResponse(
        data: List<Product>.from(json["data"].map((x) => Product.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
      );
}

class Meta {
  int total;
  int currentPage;
  int limit;
  int totalPages;

  Meta({
    required this.total,
    required this.currentPage,
    required this.limit,
    required this.totalPages,
  });

  factory Meta.fromRawJson(String str) => Meta.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        total: json["total"],
        currentPage: json["current_page"],
        limit: json["limit"],
        totalPages: json["total_pages"],
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "current_page": currentPage,
        "limit": limit,
        "total_pages": totalPages,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
