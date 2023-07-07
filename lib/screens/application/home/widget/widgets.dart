import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnthings/screens/application/home/bloc/home_bloc.dart';
import 'package:learnthings/screens/application/home/bloc/home_events.dart';
import 'package:learnthings/screens/application/home/bloc/home_states.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

Widget buildTextField(String hintText, String iconPath,
    TextInputType keyboardType, void Function(String value)? func) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        width: 290.w,
        height: 30.h,
        decoration: BoxDecoration(
          color: Styles.wightColor,
          borderRadius: BorderRadius.all(Radius.circular(5.w)),
          border: Border.all(
            color: Styles.wightColor,
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15, right: 10),
              child: Image.asset(
                iconPath,
                scale: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: SizedBox(
                width: 220.w,
                height: 60.h,
                child: TextField(
                  onChanged: (value) => func!(value),
                  style: Styles.inputText.copyWith(color: Styles.blackColor),
                  autofocus: false,
                  autocorrect: false,
                  keyboardType: keyboardType,
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: Styles.textFieldHints
                        .copyWith(color: Styles.blackColor),
                    border: InputBorder.none,
                    enabledBorder: null,
                    disabledBorder: null,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      //filter
      GestureDetector(
        child: Container(
          width: 30,
          height: 35,
          decoration: BoxDecoration(
            color: Styles.bgColorDarcker,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          child: Image.asset('assets/images/filter.png'),
        ),
        onTap: () {
          //print('you tappd??');
        },
      ),
    ],
  );
}

//slider widget
Widget slidersView(BuildContext context, HomeStates state) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(top: 40.h),
        width: 325.w,
        height: 160.h,
        child: PageView(
          onPageChanged: (value) {
            context.read<HomeBloc>().add(HomeDots(value));
          },
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: _slidersContainer(
                  imgPath: 'assets/images/flutter_course.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: _slidersContainer(imgPath: 'assets/images/python.jpeg'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: _slidersContainer(imgPath: 'assets/images/swift.jpeg'),
            ),
          ],
        ),
      ),
      DotsIndicator(
        dotsCount: 3,
        position: state.index,
        decorator: DotsDecorator(
          activeColor: Styles.seaColor,
          size: const Size.square(7),
          activeSize: const Size(13, 5),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      )
    ],
  );
}

Widget _slidersContainer(
    //deflut path
    {String imgPath = 'assets/images/flutter_course.png'}) {
  return Container(
    width: 325.w,
    height: 160.h,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(imgPath),
      ),
    ),
  );
}

//
//menuView
Widget menuView(String text1, String text2, void Function()? func) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 15),
    child: Column(
      children: [
        Container(
          width: 325.w,
          margin: EdgeInsets.only(top: 30.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text1,
                style: Styles.headLine2.copyWith(
                    fontWeight: FontWeight.bold, color: Styles.wightColor),
              ),
              GestureDetector(
                onTap: func,
                child: Text(
                  text2,
                  style: Styles.inputText
                      .copyWith(color: Styles.seaColor, fontSize: 13),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: _reuseableSubTitleText(
                  'All',
                  Styles.inputText.copyWith(
                    color: Styles.bgColorDarcker,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  Styles.bottomBarColor,
                  null),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: _reuseableSubTitleText(
                  'Popular',
                  Styles.inputText.copyWith(
                    color: Styles.bgColorDarcker,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  Styles.bottomBarColor,
                  null),
            ),
            _reuseableSubTitleText(
                'Newest',
                Styles.inputText.copyWith(
                  color: Styles.bgColorDarcker,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                Styles.bottomBarColor,
                null),
          ],
        ),
        Row(
          children: [
            //
          ],
        )
      ],
    ),
  );
}

Widget _reuseableSubTitleText(
    String bottomText, TextStyle style, Color color, void Function()? func) {
  return Container(
    margin: const EdgeInsets.only(top: 30),
    width: 70.w,
    height: 30,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(5),
    ),
    child: Center(
      child: GestureDetector(
        onTap: func,
        child: Text(
          bottomText,
          style: style,
        ),
      ),
    ),
  );
}
