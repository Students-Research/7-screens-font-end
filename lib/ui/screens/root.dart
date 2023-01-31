import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:useamy/ui/custom_widgets/bottom_buttons.dart';
import 'package:useamy/ui/screens/pair_device/home_screen.dart';
import 'package:useamy/ui/screens/screen14/screen14.dart';

import '../custom_widgets/bottom_nav_bar/fab_bar.dart';

class RootScreen extends StatefulWidget {
  RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int index = 0;

  List<Widget> screenList = [const HomeScreen(), const AboutScreen()];
  updatePage(value) {
    setState(() {
      index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screenList[index],
      // bottomNavigationBar: FABBottomAppBar(
      //   height: 80.h,
      //   iconSize: 30.sp,
      //   color: Color.fromARGB(255, 139, 36, 199),
      //   backgroundColor: Color(0xffFF6600),
      //   selectedColor: Color.fromARGB(255, 185, 74, 0),
      //   notchedShape: CircularNotchedRectangle(),
      //   onTabSelected: updatePage,
      //   items: [
      //     FABBottomAppBarItem(icon: Icon(Icons.home)),
      //     FABBottomAppBarItem(icon: Icon(Icons.check)),
      //   ],
      // ),

      bottomNavigationBar: BottomButtons(
          button1Text: 'When do send SOS',
          button1OnTap: () {
            updatePage(0);
          },
          button2Text: 'About UseaMy',
          button2OnTap: () {
            updatePage(1);
          }),
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
