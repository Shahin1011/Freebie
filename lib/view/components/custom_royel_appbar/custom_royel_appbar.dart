// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_colors/app_colors.dart';
import '../custom_image/custom_image.dart';
import '../custom_text/custom_text.dart';

class CustomRoyelAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? titleName;
  final String? rightIcon;
  final void Function()? rightOnTap;
  final bool? leftIcon;
  final Color? color;
  final Color? backgroundColor;

  const CustomRoyelAppbar({
    super.key,
    this.titleName,
    this.rightIcon,
    this.rightOnTap,
    this.leftIcon = false,
    this.color, this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      elevation: 0,
      centerTitle: true,
      scrolledUnderElevation: 0,
      backgroundColor: backgroundColor ?? Colors.transparent, // ✅ Previously transparent
      systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith( // ✅ Added for status bar
        statusBarColor: AppColors.white,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,

      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: IconButton(
            onPressed: () => rightOnTap?.call(),
            icon: rightIcon == null
                ? const SizedBox()
                : CustomImage(imageSrc: rightIcon!, height: 24, width: 24),
          ),
        ),
      ],
      leading: leftIcon == true
          ? Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: BackButton(color: color ?? AppColors.black),
      )
          : null,

      title: CustomText(
        text: titleName ?? "",
        fontSize: 24.w,
        fontWeight: FontWeight.w600,
        color: color ?? AppColors.black,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}