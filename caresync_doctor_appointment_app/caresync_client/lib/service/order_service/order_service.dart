<<<<<<< HEAD
import 'package:hyper_ui/core.dart';
import 'package:injectable/injectable.dart';

@injectable
=======
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' as ij;
import '../../model/order/order.dart';
import '../api_service/api_service.dart';

@ij.injectable
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
class OrderService extends ApiService {
  @override
  String get endpoint => "orders";

  Future<Map<String, dynamic>> createPaymentLink({
    required int scheduleId,
  }) async {
    final Dio dio = Dio();
    final String url = '$baseUrl/$endpoint/payment/create';

    try {
      final response = await dio.post(
        url,
        data: {
          'doctor_schedule_id': scheduleId,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      return Map<String, dynamic>.from(response.data['data']);
    } catch (e) {
      throw e;
    }
  }

  Future<List<Order>> getOrders({
    String search = "",
  }) async {
    List items = await get(
      search: search,
    );
    List<Order> orders = items.map((item) => Order.fromJson(item)).toList();
    return orders;
  }
}
