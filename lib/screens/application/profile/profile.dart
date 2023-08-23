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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
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
                          style: Styles.headLine2
                              .copyWith(color: Styles.wightColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(top: 5, right: 29, left: 29),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  profileGraid(
                      'assets/images/video-camera-2.png', 'My Courses'),
                  const SizedBox(
                    width: 10,
                  ),
                  profileGraid('assets/images/open-book.png', 'By Courses'),
                  const SizedBox(
                    width: 10,
                  ),
                  profileGraid('assets/images/star.png', '4.9'),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
                // decoration: BoxDecoration(color: Styles.bottomBarColortran),
                padding: const EdgeInsets.only(top: 50, left: 29),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: settingColumn(
                          'assets/images/setting-2.png', 'Settings'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: settingColumn(
                          'assets/images/badge-2.png', 'Achievments'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: settingColumn('assets/images/save-instagram-2.png',
                          'Saved Courses'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child:
                          settingColumn('assets/images/bell-3.png', 'Reminder'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: settingColumn(
                          'assets/images/wallet-2.png', 'Payment Details'),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
