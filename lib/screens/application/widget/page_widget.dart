import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:learnthings/screens/application/courses/courses.dart';
import 'package:learnthings/screens/application/home/home.dart';
import 'package:learnthings/screens/application/message/message.dart';
import 'package:learnthings/screens/application/profile/profile.dart';
import 'package:learnthings/screens/application/search/search.dart';

//application pages
Widget buildPage(int index) {
  List<Widget> widgetOption = <Widget>[
    const HomePage(),
    const SearchPage(),
    const CoursePage(),
    const MessagePage(),
    const ProfilePage(),
  ];
  return widgetOption[index];
}

var bottomNavigationItems = [
  const BottomNavigationBarItem(
    icon: Icon(
      FluentSystemIcons.ic_fluent_home_regular,
    ),
    activeIcon: Icon(
      FluentSystemIcons.ic_fluent_home_filled,
    ),
    label: 'Home',
  ),
  const BottomNavigationBarItem(
    icon: Icon(
      FluentSystemIcons.ic_fluent_search_regular,
    ),
    activeIcon: Icon(
      FluentSystemIcons.ic_fluent_search_filled,
    ),
    label: 'Search',
  ),
  const BottomNavigationBarItem(
    icon: Icon(
      FluentSystemIcons.ic_fluent_play_regular,
    ),
    activeIcon: Icon(
      FluentSystemIcons.ic_fluent_play_filled,
    ),
    label: 'Courses',
  ),
  const BottomNavigationBarItem(
    icon: Icon(
      FluentSystemIcons.ic_fluent_chat_regular,
    ),
    activeIcon: Icon(
      FluentSystemIcons.ic_fluent_chat_filled,
    ),
    label: 'Message',
  ),
  const BottomNavigationBarItem(
    icon: Icon(
      FluentSystemIcons.ic_fluent_person_regular,
    ),
    activeIcon: Icon(
      FluentSystemIcons.ic_fluent_person_filled,
    ),
    label: 'Profile',
  ),
];
