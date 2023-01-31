import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:useamy/core/constants/colors.dart';
import 'package:useamy/core/constants/style.dart';

// ignore: must_be_immutable
class CustomListTile extends StatelessWidget {
  CustomListTile({this.hintText, this.tital, super.key});
  String? tital;
  String? hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 120.w,
              child: Text(
                tital ?? '',
                style: buttonStyle.copyWith(fontSize: 12.sp),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 153.w,
                  child: TextFormField(
                    scrollPadding: EdgeInsets.zero,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: kBlack.withOpacity(0.25)),
                        ),
                        hintText: hintText ?? '',
                        hintStyle: buttonStyle.copyWith(
                            color: kBlack.withOpacity(0.25),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400)),
                    style: buttonStyle.copyWith(
                        color: kBlack.withOpacity(0.25),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400),
                  ),
                )
                // Text(
                //   info ?? '',
                //   style: buttonStyle.copyWith(
                //       color: kBlack.withOpacity(0.25),
                //       fontSize: 10.sp,
                //       fontWeight: FontWeight.w400),
                // ),
                // Container(
                //   width: 153.w,
                //   height: 1.h,
                //   decoration: BoxDecoration(color: kBlack.withOpacity(0.25)),
                // )
              ],
            )
          ],
        ),
        // SizedBox(
        //   height: 8.h,
        // )
      ],
    );
  }
}
