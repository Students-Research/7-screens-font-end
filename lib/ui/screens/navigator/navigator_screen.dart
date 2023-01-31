import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:useamy/ui/custom_widgets/custom_appbar.dart';
import 'package:useamy/ui/custom_widgets/rout_button.dart';

import '../boat_info/boat_info_screen.dart';
import '../contact_info/contact_info_screen.dart';

class NavigatorScreen extends StatelessWidget {
  const NavigatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(),
          SizedBox(
            height: 53.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                RouteButton(
                  text: 'Boat Information Stored in device',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BoatInfoScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                RouteButton(
                  text: 'Contact Information Stored on a Mobile',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContactInfoScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                RouteButton(
                  text: 'Skipper Information Stored on a Mobile',
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
