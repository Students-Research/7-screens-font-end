import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:useamy/core/constants/style.dart';
import 'package:useamy/ui/custom_widgets/bottom_buttons.dart';
import 'package:useamy/ui/custom_widgets/custom_appbar.dart';
import 'package:useamy/ui/custom_widgets/custom_listtile.dart';

class BoatInfoScreen extends StatelessWidget {
  const BoatInfoScreen({super.key});

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
              'Boat Information',
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
                    tital: 'Name of the boat:',
                    hintText: 'Text',
                  ),
                  CustomListTile(
                    tital: 'Boat type:',
                    hintText: 'Sailboat/Motorboat/Other',
                  ),
                  CustomListTile(
                    tital: 'Boat make and model',
                    hintText: 'Text',
                  ),
                  CustomListTile(
                    tital: 'Engine power:',
                    hintText: 'XX Hk, Diesel/Petrol/Electric',
                  ),
                  CustomListTile(
                    tital: 'Length:',
                    hintText: 'XX m',
                  ),
                  CustomListTile(
                    tital: 'Width:',
                    hintText: 'X m',
                  ),
                  CustomListTile(
                    tital: 'Depth:',
                    hintText: 'X,x m',
                  ),
                  CustomListTile(
                    tital: 'Weight:',
                    hintText: 'X,x tons',
                  ),
                  CustomListTile(
                    tital: 'Highest light (above the surface):',
                    hintText: 'XX m',
                  ),
                  CustomListTile(
                    tital: 'Number of mast’s:',
                    hintText: '1/2/3',
                  ),
                  CustomListTile(
                    tital: 'Color of the hull:',
                    hintText: 'Text',
                  ),
                  CustomListTile(
                    tital: 'Boat Owner',
                    hintText: 'Name/Mobile number',
                  ),
                  CustomListTile(
                    tital: 'VHF:',
                    hintText: 'Yes/No MMSI-number',
                  ),
                  CustomListTile(
                    tital: 'AIS:',
                    hintText: 'Yes/No MMSI-number',
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
