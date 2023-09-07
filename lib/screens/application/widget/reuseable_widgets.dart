import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

//just the page name
AppBar pagesBuildAppBarPageName(String txt) {
  return AppBar(
    backgroundColor: Styles.bgColorDarcker,
    title: Text(
      txt,
      style: Styles.headLine1,
    ),
  );
}

AppBar pagesBuildAppBar(void Function()? func, String text) {
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
        Text(
          text,
          style: Styles.headLine1,
        ),
        GestureDetector(
          child: Container(
            width: 30.w,
            height: 30.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: text == 'Profile'
                    ? const AssetImage('assets/images/dots-3.png')
                    : const AssetImage('assets/images/user.png'),
              ),
            ),
          ),
          onTap: () {},
        ),
      ],
    ),
  );
}
