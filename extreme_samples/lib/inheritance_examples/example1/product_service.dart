import 'package:extreme_samples/inheritance_examples/example1/api_service.dart';

class ProductService extends ApiService {
  @override
  String get endpoint => "products";
}

class CustomerService extends ApiService {
  @override
  String get endpoint => "customers";
}

class UserService extends ApiService {
  @override
  String get endpoint => "users";
}
