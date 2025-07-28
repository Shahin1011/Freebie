import 'package:flutter/material.dart';
import 'package:freebie/core/app_routes/app_routes.dart';
import 'package:freebie/utils/app_colors/app_colors.dart';
import 'package:freebie/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:freebie/view/components/custom_text/custom_text.dart';
import 'package:get/get.dart';
import '../../../components/custom_button/custom_button.dart';
import '../../../components/custom_pin_code/custom_pin_code.dart';
import '../../../components/custom_text_field/custom_text_field.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 0,),
        child: ListView(
          children: [
            CustomText(
              text: "Enter 4 Digit Code",
              fontSize: 32,
              fontWeight: FontWeight.w600,
              fontFamily: "GeraralSans",
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 8,),
            CustomText(
              text: "Enter 4 digit code that your receive on your email (cody.fisher45@example.com).",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.grey_03,
              maxLines: 2,
              textAlign: TextAlign.start,
            ),

            SizedBox(height: 24,),
            CustomPinCode(controller: TextEditingController()),
            Align(
              alignment: Alignment.centerRight,
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "Email not received?",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey_03,
                ),
                InkWell(
                  onTap: (){

                  },
                  child: CustomText(
                    left: 4,
                    text: "Resend code",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            SizedBox(height: 171,),
            CustomButton(
              onTap: (){
                Get.toNamed(AppRoutes.resetPasswordScreen);
              },
              title: "Continue",
              fontSize: 16,
              borderRadius: 10,
              fillColor: AppColors.black,
            ),


          ],
        ),
      ),
    );
  }
}
