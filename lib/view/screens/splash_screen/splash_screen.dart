import 'package:flutter/material.dart';
import 'package:freebie/utils/app_icons/app_icons.dart';
import 'package:freebie/view/components/custom_image/custom_image.dart';
import 'package:freebie/view/screens/splash_screen/widget/custom_image_loder.dart';
import 'package:get/get.dart';
import '../../../core/app_routes/app_routes.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
        Get.offAllNamed(AppRoutes.onboardingScreen);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                child: CustomImage(
                  imageSrc: AppIcons.splashEle,
                  fit: BoxFit.cover,
                ),
            ),
            
            Center(
              child: CustomImage(
                imageSrc: AppIcons.logo,
                height: 134,
                width: 134,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 66),
                child: CustomImageLoader(),
              ),
            )

          ],
        ),
      ),

    );
  }
}
