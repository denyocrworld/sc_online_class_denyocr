import 'dart:convert';

class User {
  int id;
  String name;
  String email;
  String role;
  String token;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.token,
  });

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        role: json["role"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "role": role,
        "token": token,
      };
}
