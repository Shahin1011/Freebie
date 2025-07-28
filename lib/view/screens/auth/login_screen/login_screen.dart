import 'package:flutter/material.dart';
import 'package:freebie/core/app_routes/app_routes.dart';
import 'package:freebie/utils/app_colors/app_colors.dart';
import 'package:freebie/utils/app_icons/app_icons.dart';
import 'package:freebie/view/components/custom_button/custom_button.dart';
import 'package:freebie/view/components/custom_image/custom_image.dart';
import 'package:freebie/view/components/custom_text/custom_text.dart';
import 'package:freebie/view/components/custom_text_field/custom_text_field.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText
                  (text: "Login to your account",
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  fontFamily: "GeneralSans",
                ),
                SizedBox(height: 8,),
                CustomText(
                  text: "Let's great to see you again",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey_03,
                ),

                SizedBox(height: 24,),
                CustomText(
                  bottom: 4,
                  text: "Email",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                CustomTextField(
                  fieldBorderColor: AppColors.grey_02,
                  hintText: "Enter your email address",
                ),

                SizedBox(height: 16,),
                CustomText(
                  bottom: 4,
                  text: "Password",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                CustomTextField(
                  fieldBorderColor: AppColors.grey_02,
                  hintText: "Enter your password",
                  isPassword: true,
                ),

                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Forgot your password?",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey_03,
                    ),
                    InkWell(
                      onTap: (){
                        Get.toNamed(AppRoutes.forgotPasswordScreen);
                      },
                      child: CustomText(
                        text:" Reset your password",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 24,),
                CustomButton(
                  onTap: (){
                    Get.toNamed(AppRoutes.homeScreen);
                  },
                  title: "Login",
                  fontSize: 16,
                  borderRadius: 10,
                  fillColor: AppColors.black,
                ),

                SizedBox(height: 24,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 0.0),
                        height: 1,
                        color: AppColors.grey_02,
                      ),
                    ),
                    SizedBox(width: 4,),
                    Text("Or", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.grey_03),),
                    SizedBox(width: 4,),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 0.0),
                        height: 1,
                        color: AppColors.grey_02,
                      ),
                    ),
                  ],
                ),


                SizedBox(height: 24,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: AppColors.grey_02,
                            width: 1,
                          )

                      ),

                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImage(imageSrc: AppIcons.googleImg,width: 24,height: 24,),
                        SizedBox(width: 10,),
                        Text(
                          "Sign Up with Google",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),

                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImage(imageSrc: AppIcons.facebookImg,width: 24,height: 24,),
                        SizedBox(width: 10,),
                        Text(
                          "Sign Up with Facebook",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 164,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "Don't have an account?",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey_03,
                    ),
                    InkWell(
                      onTap: (){
                        Get.toNamed(AppRoutes.signUpScreen);
                      },
                      child: CustomText(
                        left: 4,
                        text: "Join",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),


              ],
            )
          ],
        ),
      ),
    );
  }
}
