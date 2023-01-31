import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:useamy/core/constants/style.dart';

// ignore: must_be_immutable
class RouteButton extends StatelessWidget {
  RouteButton({this.text, this.onTap, super.key});
  String? text;
  // ignore: prefer_typing_uninitialized_variables
  final onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 45.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
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
            child: Text(
          text ?? '',
          style: buttonStyle,
        )),
      ),
    );
  }
}
