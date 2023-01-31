import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:useamy/core/constants/colors.dart';
import 'package:useamy/core/constants/style.dart';
import 'package:useamy/ui/custom_widgets/custom_appbar.dart';

class Screen14 extends StatelessWidget {
  const Screen14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const CustomAppBar(),
        SizedBox(
          height: 26.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Text(
                  'To send or signal SOS-MAYDAY is only to be used in the case of “grave and imminent danger to a vessel or persons, such as fire, sinking, man overboard etc.” So serious is a Mayday call considered to be that in many countries now anyone making a false Mayday call could be prosecuted under criminal law. It is solely intended to save lives.',
                  textAlign: TextAlign.left,
                  style: buttonStyle.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: kBlack),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Examples include:',
                style: buttonStyle.copyWith(
                    fontSize: 13.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 8.h,
              ),
              includeExapleSection(text: 'A fire aboard'),
              includeExapleSection(text: 'A capsized boat'),
              includeExapleSection(text: 'Man over board'),
              includeExapleSection(
                  text: 'Loss of engine or steering near rocks'),
              includeExapleSection(text: 'A vessel taking on water'),
              includeExapleSection(text: 'A medical emergency'),
              includeExapleSection(
                  text: 'Stormy weather that endangers boat and crew'),
              SizedBox(
                height: 35.h,
              ),
              Text(
                'If your situation is difficult -- but not immediately life- threatening-- choose a standard request for assistance instead.',
                textAlign: TextAlign.left,
                style: buttonStyle.copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: kBlack),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'If you\'ve lost your navigation on board, try to use your mobile phone\'s GPS-position and paper sea charts',
                textAlign: TextAlign.left,
                style: buttonStyle.copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: kBlack),
              )
            ],
          ),
        )
      ]),
    );
  }

  includeExapleSection({String? text}) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/dot-icon.png',
              height: 10.h,
              width: 10.w,
              fit: BoxFit.contain,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              text ?? '',
              style: buttonStyle.copyWith(
                  fontSize: 13.sp, fontWeight: FontWeight.w700),
            )
          ],
        ),
        SizedBox(
          height: 3.h,
        ),
      ],
    );
  }
}
