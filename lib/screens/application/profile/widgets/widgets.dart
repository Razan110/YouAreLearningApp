import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

Widget profileGraid(String imgPath, String txt) {
  return Container(
    width: 99.w,
    height: 70.h,
    padding: EdgeInsets.all(10.w),
    decoration: BoxDecoration(
      color: Styles.bottomBarColor,
      borderRadius: BorderRadius.circular(15.w),
    ),
    child: GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imgPath,
            scale: 5,
          ),
          Text(
            txt,
            style: Styles.inputText.copyWith(
              color: Styles.blackColor,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
      onTap: () {},
    ),
  );
}

Widget settingColumn(String imgPath, String txt) {
  return GestureDetector(
    onTap: () {},
    child: Row(
      children: [
        Container(
          width: 60.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: Styles.buttomColor,
            borderRadius: BorderRadius.circular(15.w),
          ),
          child: SizedBox(
            child: Image.asset(
              imgPath,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 255.w,
          height: 50.h,
          padding: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: Styles.bottomBarColortran,
            borderRadius: BorderRadius.circular(15.w),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                txt,
                style: Styles.inputText.copyWith(
                  color: Styles.wightColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
