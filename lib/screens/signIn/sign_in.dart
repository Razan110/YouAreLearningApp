import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnthings/screens/signIn/widgets/sing_in_widgets.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Styles.bgColor,
      child: SafeArea(
        child: Scaffold(
            appBar: buildAppBar(),
            body: Container(
              color: Styles.bgColor,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: buildLogin(context),
                    ),
                    // SizedBox(
                    //   height: 5.h,
                    // ),
                    Center(
                      child: reuseableText('Or use your Email to login'),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      margin: EdgeInsets.only(top: 35.h, bottom: 125.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          reuseableText('Email'),
                          SizedBox(
                            height: 5.h,
                          ),
                          buildTextField(
                            'email',
                            'Enter your email',
                            'assets/images/user.png',
                            TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          reuseableText('Password'),
                          SizedBox(
                            height: 5.h,
                          ),
                          buildTextField(
                            'password',
                            'Enter password',
                            'assets/images/padlock.png',
                            TextInputType.multiline,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          forgotPasswordOrNeedToRegster('Forgot Password?'),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Text(
                                  'You don\'t have an account?',
                                  style:
                                      Styles.inputText.copyWith(fontSize: 15),
                                ),
                              ),
                              forgotPasswordOrNeedToRegster('Register!'),
                            ],
                          ),
                          SizedBox(
                            height: 50.h,
                          ),
                          Center(
                            child: buildLogInAndRegisterButton('LogIn'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
