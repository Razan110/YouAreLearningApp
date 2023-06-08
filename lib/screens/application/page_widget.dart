import 'package:flutter/material.dart';
import 'package:learnthings/screens/application/pages/courses.dart';
import 'package:learnthings/screens/application/pages/home.dart';
import 'package:learnthings/screens/application/pages/message.dart';
import 'package:learnthings/screens/application/pages/profile.dart';
import 'package:learnthings/screens/application/pages/search.dart';

Widget buildPage(int index) {
  List<Widget> widgetOption = <Widget>[
    const HomePage(),
    const SearchPage(),
    const CoursePage(),
    const MessagePage(),
    const ProfilePage(),

    // Container(
    //     color: Styles.bgColor, child: Text('Home', style: Styles.headLine1)),
    // Container(
    //     color: Styles.bgColor, child: Text('Search', style: Styles.headLine1)),
    // Container(
    //     color: Styles.bgColor, child: Text('Courses', style: Styles.headLine1)),
    // Container(
    //     color: Styles.bgColor, child: Text('Profile', style: Styles.headLine1)),
  ];
  return widgetOption[index];
}
