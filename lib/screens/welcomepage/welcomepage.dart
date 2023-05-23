import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnthings/screens/welcomepage/bloc/welcome_blocs.dart';
import 'package:learnthings/screens/welcomepage/bloc/welcome_events.dart';
import 'package:learnthings/screens/welcomepage/bloc/welcome_states.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WelcomeBloc, WelcomeStates>(
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.only(top: 70.h, left: 15, right: 15),
            color: Styles.bgColor,
            width: 375.w,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    //change the index value "the dots"
                    state.page = index;
                    BlocProvider.of<WelcomeBloc>(context).add(WelcomeEvents());
                    // print(index);
                  },
                  children: [
                    _pages(
                      1,
                      context,
                      'Next',
                      'First See Learning',
                      'Forget about a form of paper all knowledge in one learning!',
                      'assets/images/reading.png',
                      //Welcome(),
                    ),
                    _pages(
                      2,
                      context,
                      'Next',
                      'Connect With Everyone',
                      'Always keep in touch with your tutor & frinds. Let\'s get connected.',
                      'assets/images/man.png',
                    ),
                    _pages(
                      3,
                      context,
                      'Get started!',
                      'Always Frscinated Learning',
                      'Anywhere, anytime. The time is at discrtion so study whenever you want!',
                      'assets/images/boy.png',
                    ),
                  ],
                ),
                Positioned(
                  top: 600,
                  child: DotsIndicator(
                    position: state.page,
                    dotsCount: 3,
                    decorator: DotsDecorator(
                      color: Styles.wightColor,
                      activeColor: Styles.buttomColor,
                      activeSize: const Size(15.0, 8.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _pages(int index, BuildContext context, String buttonName,
      String title, String subTitle, String imagePath) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        Text(title, style: Styles.headLine1),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
          child: Text(subTitle, style: Styles.headLine2),
        ),

        Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              if (index < 3) {
                //animation

                pageController.animateToPage(index,
                    duration: const Duration(microseconds: 500),
                    curve: Curves.easeIn);
              } else {
                //jump to the new page
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Welcome()));
              }
            },

            //   },
            child: Container(
              //color: Styles.darkGrayColor,
              margin: const EdgeInsets.only(top: 100),
              padding: const EdgeInsets.only(
                  left: 130, right: 130, top: 15, bottom: 15),
              decoration: BoxDecoration(
                  color: Styles.buttomColor,
                  borderRadius: BorderRadius.circular(24)),
              child: Column(
                children: [
                  Text(
                    buttonName,
                    style: Styles.headLine2.copyWith(color: Styles.wightColor),
                  ),
                ],
              ),
            ),
          ),
        ),
        // ),
      ],
    );
  }
}
