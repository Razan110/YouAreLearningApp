import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static Color bgColor = const Color.fromARGB(255, 30, 32, 86);
  static Color buttomColor = const Color.fromARGB(255, 143, 146, 207);
  static Color blackColor = const Color.fromARGB(255, 0, 0, 0);
  static Color wightColor = const Color.fromARGB(255, 255, 255, 255);
  static Color logInRegisterButtomColor = Color.fromARGB(255, 143, 207, 186);

  static TextStyle textStyle = const TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLine1 = TextStyle(
    color: Colors.white,
    fontSize: 24.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle headLine2 = TextStyle(
    color: const Color(0xFFCFCFCF),
    fontSize: 17.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle textFieldHints = TextStyle(
    color: const Color(0x8AFFFFFF),
    fontSize: 17.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle inputText = TextStyle(
    color: Colors.white,
    fontSize: 17.sp,
    fontWeight: FontWeight.normal,
  );
}
