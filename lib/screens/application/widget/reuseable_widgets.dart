import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

AppBar pagesBuildAppBar(void Function()? func) {
  return AppBar(
    backgroundColor: Styles.bgColorDarcker,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 25.w,
          height: 30.h,
          child: Image.asset(
            'assets/images/menu.png',
          ),
        ),
        GestureDetector(
          child: Container(
            width: 30.w,
            height: 30.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/user.png'),
              ),
            ),
          ),
          onTap: () {},
        ),
      ],
    ),
  );
}
