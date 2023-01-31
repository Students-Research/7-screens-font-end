import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:useamy/core/constants/style.dart';
import 'package:useamy/ui/custom_widgets/bottom_buttons.dart';
import 'package:useamy/ui/custom_widgets/custom_appbar.dart';
import 'package:useamy/ui/custom_widgets/custom_listtile.dart';

class ContactInfoScreen extends StatelessWidget {
  const ContactInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomButtons(
      //   button1Text: 'When do send SOS',
      //   button1OnTap: () {},
      //   button2Text: 'About UseaMy',
      //   button2OnTap: () {},
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Contact Information',
              style: buttonStyle,
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 28),
              padding: const EdgeInsets.only(
                  left: 14, bottom: 15, right: 26, top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(15.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 1.5,
                    blurRadius: 2,
                    offset: const Offset(0, 4), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  CustomListTile(
                    tital: 'Name ',
                    hintText: 'Text',
                  ),
                  CustomListTile(
                    tital: 'Mobile number:',
                    hintText: 'mobile Number field',
                  ),
                  CustomListTile(
                    tital: 'Home Address',
                    hintText: 'Road,Nr, Postal code, City, Country',
                  ),
                  CustomListTile(
                    tital: 'Close Relative “ICE”:',
                    hintText: 'Field',
                  ),
                  CustomListTile(
                    tital: 'ICE mobile number::',
                    hintText: 'Mobile number field',
                  ),
                  CustomListTile(
                    tital: "The boat’s home port:",
                    hintText: 'Location, City, Country',
                  ),
                  CustomListTile(
                    tital: 'Insurance company/number:',
                    hintText: 'Text Number field’s',
                  ),
                  CustomListTile(
                    tital: 'Other:',
                    hintText: 'Text field',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
