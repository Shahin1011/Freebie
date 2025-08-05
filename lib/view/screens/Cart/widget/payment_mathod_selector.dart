import 'package:flutter/material.dart';
import 'package:freebie/model/payment_selector_model.dart';
import 'package:get/get.dart';
import 'package:freebie/utils/app_icons/app_icons.dart';
import 'package:freebie/controller/paymentController.dart';

class PaymentMethodSelector extends StatelessWidget {
  final PaymentController controller = Get.put(PaymentController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
      children: PaymentMethod.values.map((method) {
        bool isSelected = controller.selectedMethod.value == method;
        String label = method.name.capitalize!;
        String icon = method == PaymentMethod.card
            ? AppIcons.cardIcon
            : method == PaymentMethod.cash
            ? AppIcons.cashIcon
            : AppIcons.appleIcon;

        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: ElevatedButton(
              onPressed: () => controller.selectMethod(method),
              style: ElevatedButton.styleFrom(
                backgroundColor: isSelected ? Colors.black : Colors.white,
                foregroundColor: isSelected ? Colors.white : Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey.shade300),
                ),
                elevation: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    icon,
                    height: 20,
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    ));
  }
}