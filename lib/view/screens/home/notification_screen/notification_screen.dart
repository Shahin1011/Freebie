import 'package:flutter/material.dart';
import 'package:freebie/utils/app_colors/app_colors.dart';
import 'package:freebie/utils/app_icons/app_icons.dart';
import 'package:freebie/view/components/custom_image/custom_image.dart';
import 'package:freebie/view/components/custom_nav_bar/navbar.dart';
import 'package:freebie/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:freebie/view/components/custom_text/custom_text.dart';

class NotificationScreen extends StatelessWidget{
  const NotificationScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        titleName: "Notifications",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24,),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Divider(
              thickness: 2,
              color: Colors.grey[200],
            ),

            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImage(
                      imageSrc: AppIcons.googleImg,
                      width: 24, 
                      height: 24,
                    ),
                    SizedBox(width: 7.5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "30% Special Discount!",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Text(
                          "Special promotion only valid today.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Divider(
                  thickness: 2,
                  color: Colors.grey[200],
                ),
              ],
            ),

            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Yesterday",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImage(
                      imageSrc: AppIcons.googleImg,
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 7.5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Top Up E-wallet Successfully!",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Text(
                          "You have top up your e-wallet.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.only(left: 29.5),
                  child: Divider(
                    thickness: 2,
                    color: Colors.grey[200],
                  ),
                ),

                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImage(
                      imageSrc: AppIcons.googleImg,
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 7.5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "New Service Available!",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Text(
                          "Now you can track order in real-time.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                SizedBox(height: 20,),
                Divider(
                  thickness: 2,
                  color: Colors.grey[200],
                ),

              ],
            ),

            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "July 7, 2025",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImage(
                      imageSrc: AppIcons.googleImg,
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 7.5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Credit Card Connected!",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Text(
                          "Credit card has been linked.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.only(left: 29.5),
                  child: Divider(
                    thickness: 2,
                    color: Colors.grey[200],
                  ),
                ),

                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImage(
                      imageSrc: AppIcons.googleImg,
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 7.5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Account Setup Successfully!",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Text(
                          "Your account has been created.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    )
                  ],
                ),

              ],
            ),

          ],
        ),

      ),
      bottomNavigationBar: NavBar(currentIndex: 0,),
    );

  }


}