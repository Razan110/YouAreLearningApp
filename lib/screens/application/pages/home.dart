import 'package:flutter/material.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Styles.bgColorDarcker,
      padding: const EdgeInsets.only(left: 15, right: 15, top: 0),
      child: Column(
        children: [
          Text(
            'HomePage',
            style: Styles.headLine1,
          ),
        ],
      ),
    );
  }
}
