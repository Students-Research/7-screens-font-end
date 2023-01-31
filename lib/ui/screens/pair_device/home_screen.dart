import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:useamy/ui/custom_widgets/bottom_buttons.dart';
import 'package:useamy/ui/custom_widgets/custom-button.dart';

import '../navigator/navigator_screen.dart';
import '../screen14/screen14.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///custom app bar
            customAppBar(context),
            SizedBox(
              height: 65.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 105, right: 85),
              child: Image.asset(
                'assets/pair-device-img.png',
                height: 190.h,
                width: 200.w,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 55.h,
            ),

            ///
            ///setting button
            CustomButton(
              text: "Setting's",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NavigatorScreen()));
              },
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }

  customAppBar(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 209.h,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/useamy-logo.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 28.16,
          left: 30.53,
          child: Image.asset(
            'assets/back-icon.png',
            height: 23.69.h,
            width: 13.56.w,
          ),
        )
      ],
    );
  }
}
