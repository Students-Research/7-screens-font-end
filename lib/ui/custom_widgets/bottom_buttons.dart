import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:useamy/core/constants/colors.dart';
import 'package:useamy/ui/custom_widgets/custom-button.dart';

// ignore: must_be_immutable
class BottomButtons extends StatelessWidget {
  BottomButtons(
      {this.button1Text,
      this.button1OnTap,
      this.button2OnTap,
      this.button2Text,
      Key? key})
      : super(key: key);
  String? button1Text;
  String? button2Text;
  // ignore: prefer_typing_uninitialized_variables
  final button1OnTap;
  // ignore: prefer_typing_uninitialized_variables
  final button2OnTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(27.r), topRight: Radius.circular(27.r)),
        child: SizedBox(
          height: 90.h,
          child: BottomAppBar(
            color: kPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomButton(
                      text: button1Text ?? '',
                      onTap: button1OnTap,
                    ),
                    CustomButton(
                      onTap: button2OnTap,
                      text: button2Text ?? '',
                    )
                  ]),
            ),
          ),
        ));
  }
}
