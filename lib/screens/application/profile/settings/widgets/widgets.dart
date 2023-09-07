import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

Widget logOutButton(
  void Function()? func,
) {
  return GestureDetector(
    //chang it to a single tap....
    onDoubleTap: func,

    // behavior: HitTestBehavior.translucent,
    // onTap: () {
    //   func;
    // },
    child: Container(
      width: 160.w,
      height: 60.h,
      decoration: BoxDecoration(
        color: Styles.buttomColor,
        borderRadius: BorderRadius.all(Radius.circular(15.w)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/exit.png',
            scale: 5,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'logout',
            style: Styles.headLine1.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
