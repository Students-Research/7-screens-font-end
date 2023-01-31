import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:useamy/ui/custom_widgets/bottom_buttons.dart';
import 'package:useamy/ui/custom_widgets/custom-button.dart';

class PairDeviceScreen extends StatelessWidget {
  const PairDeviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///button buttons
      bottomNavigationBar: BottomButtons(
        button1Text: 'When do send SOS',
        button1OnTap: () {},
        button2Text: 'About UseaMy',
        button2OnTap: () {},
      ),

      ///
      ///
      body: Center(
        child: SingleChildScrollView(
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
                onTap: () {},
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
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
