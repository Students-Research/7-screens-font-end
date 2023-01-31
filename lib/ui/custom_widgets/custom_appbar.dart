import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:useamy/core/constants/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.h,
      width: double.infinity,
      color: kBlack,
      child: Stack(
        children: [
          Positioned(
            left: 30,
            top: 58,
            child: Image.asset(
              'assets/drawar-icon.png',
              height: 40.h,
              width: 40.w,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            right: 9,
            top: 25,
            child: Image.asset(
              'assets/app_logo.png',
              height: 177.h,
              width: 235.w,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
