import 'package:extreme_samples/shelf_api/user_controler.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart';

import 'product_controller.dart'; // Pastikan ini sesuai dengan lokasi file Anda

void main() async {
  final router = Router();

  // Membuat instance dari ProductController

  // "Mount" router dari ProductController ke path /products
  router.mount('/api/products', ProductController().router);
  router.mount('/api/users', UserController().router);

  // Menjalankan server
  final server = await shelf_io.serve(router, 'localhost', 8080);
  print('Server listening on port ${server.port}');
}
