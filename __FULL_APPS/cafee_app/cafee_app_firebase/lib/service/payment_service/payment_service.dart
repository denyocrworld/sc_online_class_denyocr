import 'package:dio/dio.dart';
import 'package:hyper_ui/model/product/product.dart';
import 'dart:convert';
import 'package:uuid/uuid.dart';

class PaymentService {
  Dio dio = Dio();

  Future<String?> createPaymentLink({
    required List<Product> products,
    required double total,
  }) async {
    var uuid = Uuid();

    List<Map<String, dynamic>> items = [];
    for (var product in products) {
      if (product.qty == 0) continue;

      items.add(
        {
          'id': product.id,
          'name': product.productName,
          'price': product.price,
          'quantity': product.qty,
        },
      );
    }

    var data = jsonEncode({
      'transaction_details': {
        'order_id': uuid.v4(),
        'gross_amount': total,
        'payment_link_id': uuid.v4(),
      },
      'credit_card': {
        'secure': true,
      },
      'usage_limit': 1,
      'expiry': {
        'duration': 1,
        'unit': 'days',
      },
      'item_details': items,
      'customer_details': {
        'first_name': 'John',
        'last_name': 'Doe',
        'email': 'john.doe@example.com',
        'phone': '+62181000000000',
        'notes':
            'Thank you for your order. Please follow the instructions to complete payment.',
      },
    });

    try {
      var response = await dio.post(
        'https://api.sandbox.midtrans.com/v1/payment-links',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization':
                'Basic U0ItTWlkLXNlcnZlci1vcEpaVkM4TGloazVwLXZHdHg2YUt5SFk6',
          },
        ),
        data: data,
      );

      return response.data["payment_url"];
    } on Exception {
      return null;
    }
  }
}
