import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

toastInfo({
  required String msg,
  Color bg = Colors.white,
  Color txt = Colors.black,
  
}) {
  return Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 2,
    backgroundColor: bg,
    textColor: txt,
    fontSize: 12.sp,
  );
}
