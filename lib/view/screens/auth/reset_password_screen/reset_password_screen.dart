import 'package:flutter/material.dart';
import 'package:freebie/core/app_routes/app_routes.dart';
import 'package:freebie/utils/app_colors/app_colors.dart';
import 'package:freebie/utils/app_icons/app_icons.dart';
import 'package:freebie/view/components/custom_image/custom_image.dart';
import 'package:freebie/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:freebie/view/components/custom_text/custom_text.dart';
import 'package:get/get.dart';
import '../../../components/custom_button/custom_button.dart';
import '../../../components/custom_pin_code/custom_pin_code.dart';
import '../../../components/custom_text_field/custom_text_field.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true),
      body: GestureDetector(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 0),
          child: ListView(
            children: [
              CustomText(
                text: "Reset Password",
                fontSize: 32,
                fontWeight: FontWeight.w600,
                fontFamily: "GeraralSans",
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 8),
              CustomText(
                text:
                    "Set the new password for your account so you can login and access all the features.",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.grey_03,
                maxLines: 2,
                textAlign: TextAlign.start,
              ),

              SizedBox(height: 24),
              CustomText(
                bottom: 4,
                text: "Password",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.start,
              ),
              CustomTextField(
                fieldBorderColor: AppColors.grey_02,
                hintText: "Enter a new your password",
                isPassword: true,
              ),

              SizedBox(height: 16),
              CustomText(
                bottom: 4,
                text: "Password",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.start,
              ),
              CustomTextField(
                fieldBorderColor: AppColors.grey_02,
                hintText: "Confirmed your password",
                isPassword: true,
              ),

              SizedBox(height: 97),
              customButton(context,(){},"Login"),
            ],
          ),
        ),
      ),
    );
  }

  CustomButton customButton(BuildContext context,VoidCallback ontap,String text) {
    return CustomButton(
              onTap: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  // Set to true if you want to close it by tapping outside
                  builder: (BuildContext context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      contentPadding: EdgeInsets.all(16),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(AppIcons.checkImg),
                          SizedBox(height: 12),
                          Text(
                            'Password Changed!',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          SizedBox(height: 8),
                          Text(
                            'Your can now use your new password to login to your account.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.grey_03,
                            ),
                          ),

                          SizedBox(height: 24),

                         GestureDetector(
                              onTap:(){
                                Get.back();
                              },
                              child: Container(
                                height: 45,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.black,

                                ),
                                child: Center(
                                  child: Text(
                                    text,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontFamily: "Inter",
                                    ),
                                  ),
                                ),
                              ),
                            ),

                        ],
                      ),
                    );
                  },
                );
              },
              title: "Continue",
              fontSize: 16,
              borderRadius: 10,
              fillColor: AppColors.black,
            );
  }
}
