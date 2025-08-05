import 'package:freebie/model/payment_selector_model.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {
  var selectedMethod = PaymentMethod.card.obs;

  void selectMethod(PaymentMethod method) {
    selectedMethod.value = method;
  }
}