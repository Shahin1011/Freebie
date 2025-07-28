import 'package:flutter/material.dart';
import 'package:freebie/utils/app_icons/app_icons.dart';
import 'package:freebie/view/components/custom_royel_appbar/custom_royel_appbar.dart';

class ProductDetailsScreen extends StatelessWidget{
  const ProductDetailsScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        titleName: "Details",
        rightIcon: AppIcons.notificationIcon,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 368,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage('https://stolen.com.bd/storage/into-wild-min.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}