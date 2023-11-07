import 'package:code_architecture/service/auth_service.dart';

void main() async {
  var response = await AuthService().login(
    email: "eve.holt@reqres.in",
    password: "cityslicka",
  );
  print(response);
}
