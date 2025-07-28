import 'package:flutter/material.dart';
import 'package:freebie/core/app_routes/app_routes.dart';
import 'package:freebie/utils/app_colors/app_colors.dart';
import 'package:freebie/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:freebie/view/components/custom_text/custom_text.dart';

import 'package:get/get.dart';

import '../../../components/custom_button/custom_button.dart';
import '../../../components/custom_text_field/custom_text_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 0,),
        child: ListView(
          children: [
            CustomText(
              text: "Forgot Password",
              fontSize: 32,
              fontWeight: FontWeight.w600,
              fontFamily: "GeraralSans",
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 8,),
            CustomText(
              text: "Enter your email for the verification process. We will send 4 digits code to your email.",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.grey_03,
              maxLines: 2,
              textAlign: TextAlign.start,
            ),

            SizedBox(height: 24,),
            CustomText(
              bottom: 4,
              text: "Email",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.start,
            ),
            CustomTextField(
              fieldBorderColor: AppColors.grey_02,
              hintText: "Enter your email address",
            ),

            SizedBox(height: 191,),
            CustomButton(
              onTap: (){
                Get.toNamed(AppRoutes.verificationScreen);
              },
              title: "Send Code",
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
