import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnthings/screens/application/profile/widgets/widgets.dart';
import 'package:learnthings/screens/application/widget/reuseable_widgets.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: pagesBuildAppBar(null, 'Profile'),
      backgroundColor: Styles.bgColorDarcker,
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 100.w,
                height: 100.h,
                decoration: const BoxDecoration(
                  //color: Styles.bgColorDarcker,
                  image: DecorationImage(
                    image: AssetImage('assets/images/girl-2.png'),
                    // scale: 3,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 80.0, left: 75),
                  child: Image(
                    image: AssetImage('assets/images/editing.png'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Lanai',
                    style: Styles.headLine2.copyWith(color: Styles.wightColor),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: profileGraid(),
            ),
            Container(
              padding: const EdgeInsets.only(top: 40),
              child: buildListView(context),
            ),
          ],
        ),
      ),
    );
  }
}
