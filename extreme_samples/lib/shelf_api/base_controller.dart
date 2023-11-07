import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class BaseController {
  final Router _router;
  static final List<Map<String, dynamic>> items = [];
  static int idValue = 0;

  BaseController() : _router = Router() {
    _router.get('/', getAll);
    _router.get('/<id>', getById);
    _router.post('/', create);
    _router.put('/<id>', update);
    _router.delete('/<id>', delete);
  }

  Future<Response> getAll(Request req) async {
    return Response.ok(jsonEncode(items));
  }

  Future<Response> getById(Request req, String id) async {
    Map<String, dynamic> item = items.firstWhere(
      (p) => p['id'] == id,
    );
    if (item != null) {
      return Response.ok(jsonEncode(item));
    } else {
      return Response.notFound(jsonEncode({'error': 'Item not found'}));
    }
  }

  Future<Response> create(Request req) async {
    var content = await req.readAsString();
    var data = jsonDecode(content);
    data['id'] = idValue++;
    items.add(data);
    return Response.ok('Item added successfully');
  }

  Future<Response> update(Request req, String id) async {
    var content = await req.readAsString();
    var newData = jsonDecode(content);
    var index = items.indexWhere((p) => p['id'] == id);
    if (index != -1) {
      items[index][id] = id;
      for (var key in newData) {
        items[index][key] = newData[key];
      }

      return Response.ok('Item updated successfully');
    } else {
      return Response.notFound('Item not found');
    }
  }

  Future<Response> delete(Request req, String id) async {
    var index = items.indexWhere((p) => p['id'] == id);
    if (index != -1) {
      items.removeAt(index);
      return Response.ok('Item removed successfully');
    } else {
      return Response.notFound('Item not found');
    }
  }

  Router get router => _router;
}
