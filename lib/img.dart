import 'package:flutter/material.dart';

class Img extends StatelessWidget {
  const Img({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> floderNames = [0, 18, 36];
    return ListView.builder(
      shrinkWrap: true,
      itemCount: floderNames.length,
      itemBuilder: (BuildContext context, int index) {
        int floderNumber = floderNames[index];
        String imgpath = 'assets/images/$floderNumber/reading.png';
        return Image.asset(
          imgpath,
        );
      },
    );
  }
}
