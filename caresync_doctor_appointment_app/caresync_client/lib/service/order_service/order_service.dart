import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/api_service/api_service.dart';

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
}
