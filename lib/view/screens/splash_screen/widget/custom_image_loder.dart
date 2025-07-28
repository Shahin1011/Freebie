import 'dart:math';
import 'package:flutter/material.dart';
import 'package:freebie/utils/app_icons/app_icons.dart';
import 'package:freebie/view/components/custom_image/custom_image.dart';

class CustomImageLoader extends StatefulWidget {
  const CustomImageLoader({super.key});

  @override
  State<CustomImageLoader> createState() => _CustomImageLoaderState();
}

class _CustomImageLoaderState extends State<CustomImageLoader> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(); // continuously spins
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: -1.0).animate(_controller), // Negative = right-to-left
      child: CustomImage(imageSrc: AppIcons.splashCom, width: 50,height: 50,)
    );
  }
}
