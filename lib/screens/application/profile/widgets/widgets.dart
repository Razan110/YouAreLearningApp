import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnthings/routes/route_names.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

var imgInfo = <String, String>{
  'My Courses': 'video-camera-2.png',
  'By Courses': 'open-book.png',
  '4.9': 'star.png',
};

Widget profileGraid() {
  return Row(
    children: [
      ...List.generate(
        imgInfo.length,
        (index) => GestureDetector(
          child: Container(
            width: 99.w,
            height: 70.h,
            margin: const EdgeInsets.only(left: 6, right: 6),
            decoration: BoxDecoration(
              color: Styles.bottomBarColor,
              borderRadius: BorderRadius.circular(15.w),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/${imgInfo.values.elementAt(index)}',
                  scale: 5,
                ),
                Text(
                  imgInfo.keys.elementAt(index),
                  style: Styles.inputText.copyWith(
                    color: Styles.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

//setting list imgs and texts
var imgInfoStting = <String, String>{
  'Settings': 'setting-2.png',
  'Achievments': 'badge-2.png',
  'Saved Courses': 'save-instagram-2.png',
  'Reminder': 'bell-3.png',
  'Payment Details': 'wallet-2.png'
};

Widget buildListView(BuildContext contxet) {
  return Column(
    children: [
      ...List.generate(
          imgInfoStting.length,
          (index) => GestureDetector(
                onTap: () {
                  Navigator.of(contxet).pushNamed(AppRoutes.settings);
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 29, bottom: 15),
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
                            'assets/images/${imgInfoStting.values.elementAt(index)}',
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
                              imgInfoStting.keys.elementAt(index),
                              style: Styles.inputText.copyWith(
                                color: Styles.wightColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
    ],
  );
}
