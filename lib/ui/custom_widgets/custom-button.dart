// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:useamy/core/constants/colors.dart';
import 'package:useamy/core/constants/style.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({this.onTap, this.text, super.key});
  String? text;
  // ignore: prefer_typing_uninitialized_variables
  final onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56.h,
        width: 118.w,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 1.5,
              blurRadius: 2,
              offset: const Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        child: Center(
            child: Text(text ?? '',
                textAlign: TextAlign.center, style: buttonStyle)),
      ),
    );
  }
}
