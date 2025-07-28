import 'package:flutter/material.dart';
import 'package:freebie/core/app_routes/app_routes.dart';
import 'package:freebie/utils/app_icons/app_icons.dart';
import 'package:freebie/view/components/custom_image/custom_image.dart';
import 'package:freebie/view/components/custom_text/custom_text.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget{
  const OnboardingScreen ({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomText(
            top: 52,
            left: 24,
            textAlign: TextAlign.start,
            text: "Define\nyourself in\nyour unique\nway.",
            fontWeight: FontWeight.w700,
            fontSize: 75,
            maxLines: 4,
            height: 0.80,
            letterSpacing: -5,
            fontFamily: "GeneralSans",
          ),
          Center(
            child: CustomImage(
              imageSrc: AppIcons.onboardCurbEle, fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: CustomImage(imageSrc: AppIcons.personImg, fit: BoxFit.fill,),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: const Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 1.2,
                  ),
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.signUpScreen);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(horizontal: 84, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Get Started",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Icon(Icons.arrow_forward, color: Colors.white, size: 24,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }


}