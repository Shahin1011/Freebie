import 'package:flutter/material.dart';
import 'package:freebie/core/app_routes/app_routes.dart';
import 'package:freebie/utils/app_colors/app_colors.dart';
import 'package:freebie/utils/app_icons/app_icons.dart';
import 'package:freebie/view/components/custom_image/custom_image.dart';
import 'package:freebie/view/components/custom_nav_bar/navbar.dart';
import 'package:freebie/view/components/custom_text/custom_text.dart';
import 'package:freebie/view/screens/home/widget/cutom_product_card.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 50,),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Discover",
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                IconButton(

                  onPressed: (){},
                  icon: CustomImage(
                    imageSrc: AppIcons.notificationIcon,
                    height: 24,
                    width: 24,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.grey_02,
                        width: 1.5,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                    child: Row(
                      children: [
                        CustomImage(imageSrc: AppIcons.searchIcon, imageColor: Colors.grey, height: 25, width: 25,),
                  
                        SizedBox(width: 12),
                        Expanded(
                          child: Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search for clothes...",
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.grey_03,
                                ),
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                              ),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                  
                        CustomImage(imageSrc: AppIcons.voiceIcon),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: GestureDetector(
                      onTap: () {

                      },
                      child: CustomImage(
                        imageSrc: AppIcons.filterIcon,
                        imageColor: Colors.white,
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ),
                )
              ],
            ),


            SizedBox(height: 0),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 19,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.70,

                ),
                itemCount: 12,
                itemBuilder: (BuildContext context, int index){
                  return CustomProductCard (
                    imageUrl: 'https://stolen.com.bd/storage/into-wild-min.jpg',
                    title: 'Regular Fit T-shirt',
                    price: '৳1,090',
                    onTap: () {
                      Get.toNamed(AppRoutes.productDetailsScreen);
                    },
                    onFavoriteTap: () {

                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(currentIndex: 0),
    );
  }

}
