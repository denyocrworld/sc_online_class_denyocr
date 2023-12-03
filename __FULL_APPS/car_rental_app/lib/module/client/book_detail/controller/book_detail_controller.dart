import 'package:car_rental_app/core.dart';

class BookDetailController extends GetxController {
  BookDetailView? view;
  Map? selectedCreditCard;




  void setPaymentMethodTo(Map paymentCard) {
    selectedCreditCard = paymentCard;
    update();
  }
}
