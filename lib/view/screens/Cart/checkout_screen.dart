import 'package:flutter/material.dart';
import 'package:freebie/utils/app_colors/app_colors.dart';
import 'package:freebie/utils/app_icons/app_icons.dart';
import 'package:freebie/view/components/custom_royel_appbar/custom_royel_appbar.dart';


class CheckoutScreen extends StatefulWidget{
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        titleName: "Checkout",
        rightIcon: AppIcons.notificationIcon,
        rightOnTap: (){},
      ),

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          Divider(
            thickness: 2,
            color: AppColors.grey_02,
          ),
        ],
      ),

    );
  }
}