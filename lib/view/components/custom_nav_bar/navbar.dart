import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freebie/view/screens/Account/account_screen.dart';
import 'package:freebie/view/screens/Cart/cart_screen.dart';
import 'package:freebie/view/screens/home/home_screen.dart';
import 'package:freebie/view/screens/saved/saved_screen.dart';
import 'package:freebie/view/screens/search/search_screen.dart';
import 'package:get/get.dart';
import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/app_icons/app_icons.dart';

import '../custom_text/custom_text.dart';

class NavBar extends StatefulWidget {
  final int currentIndex;

  const NavBar({required this.currentIndex, super.key});

  @override
  State<NavBar> createState() => _UserNavBarState();
}

class _UserNavBarState extends State<NavBar> {
  late int bottomNavIndex;
  final List<String> navbarNameList = [
    "Home",
    "Search",
    "Saved",
    "Cart",
    "Account",
  ];
  final List<String> selectedIcon = [
    AppIcons.homeS,
    AppIcons.searchS,
    AppIcons.savedS,
    AppIcons.cartS,
    AppIcons.accountS,
  ];
  final List<String> unselectedIcon = [
    AppIcons.homeU,
    AppIcons.searchU,
    AppIcons.savedU,
    AppIcons.cartU,
    AppIcons.accountU,
  ];

  @override
  void initState() {
    bottomNavIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
          color: Color(0xffFEFEFE),
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(20.r),
        //   topRight: Radius.circular(20.r),
        // ),
        border: Border.all(color: AppColors.grey_02,width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurRadius: 0,
            offset: const Offset(3, 0),
          ),
        ]
      ),
      height: 86.h,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          selectedIcon.length,
              (index) => InkWell(
            onTap: () => onTap(index),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 6.h,),
                Container(
                  height: 40.h,
                  width: 40.w,
                  alignment: Alignment.center,
                  child: Image.asset(
                    index == bottomNavIndex ? selectedIcon[index] : unselectedIcon[index],
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
                CustomText(
                  text: navbarNameList[index],
                  color: index == bottomNavIndex ? AppColors.black : AppColors.grey_03,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.w,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTap(int index) {
    if (index != bottomNavIndex) {
      setState(() {
        bottomNavIndex = index;
      });

      switch (index) {
        case 0:
          Get.offAll(() => HomeScreen());
          break;
        case 1:
          Get.to(() => SearchScreen());
          break;
        case 2:
          Get.to(() => SavedScreen());
          break;
        case 3:
          Get.to(() => CartScreen());
          break;
        case 4:
          Get.to(() => AccountScreen());
          break;
      }
    }
  }
}
