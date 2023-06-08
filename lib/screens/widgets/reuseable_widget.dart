import 'package:flutter/material.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

//App Bar
AppBar buildAppBar(String txt, void Function()? func) {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: Container(
        color: Styles.wightColor,
        height: 0.0,
      ),
    ),
    backgroundColor: Styles.bgColor,
    title: Text(
      txt,
      style: Styles.headLine1.copyWith(
        fontSize: 29,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
//