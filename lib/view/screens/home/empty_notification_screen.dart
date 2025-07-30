import 'package:flutter/material.dart';
import 'package:freebie/utils/app_colors/app_colors.dart';
import 'package:freebie/utils/app_icons/app_icons.dart';
import 'package:freebie/view/components/custom_image/custom_image.dart';
import 'package:freebie/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:freebie/view/components/custom_text/custom_text.dart';

class EmptyNotificationScreen extends StatelessWidget{
  const EmptyNotificationScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        titleName: "Details",
        rightIcon: AppIcons.notificationIcon,
        rightOnTap: (){},
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24,),
        child: Column(
          children: [
            Divider(
              thickness: 2,
              color: Colors.grey[300],
            ),

            SizedBox(height: 214,),
            CustomImage(
              imageSrc: AppIcons.bigNotifi,
              height: 60,
              width: 60,
            ),
            SizedBox(height: 24,),
            CustomText(
              text: "You haven’t gotten any\nnotifications yet!",
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 12,),
            CustomText(
              text: "We’ll alert you when something \ncool happens.",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.grey_03,
            ),

          ],
        ),


      ),
    );

  }


}