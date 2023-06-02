import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnthings/screens/signin_and_register/bloc/signIn/siginin_events.dart';
import 'package:learnthings/screens/signin_and_register/bloc/signIn/signin_blocs.dart';
import 'package:learnthings/screens/signin_and_register/bloc/signIn/signin_states.dart';
import 'package:learnthings/screens/signin_and_register/controllers/signin_controller.dart';
import 'package:learnthings/screens/signin_and_register/widgets/sing_in_widgets.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInStates();
}

class _SignInStates extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInStates>(
      builder: (context, state) {
        return Container(
          color: Styles.bgColor,
          child: SafeArea(
            child: Scaffold(
                appBar: buildAppBar('Log In', null),
                body: Container(
                  color: Styles.bgColor,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: buildLogin(context),
                        ),
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
                                  TextInputType.emailAddress, (value) {
                                context
                                    .read<SignInBloc>()
                                    .add(Emailevents(value));
                              }),
                              SizedBox(
                                height: 20.h,
                              ),
                              reuseableText('Password'),
                              SizedBox(
                                height: 5.h,
                              ),
                              buildTextField(
                                  'password',
                                  'Enter password',
                                  'assets/images/padlock.png',
                                  TextInputType.multiline, (value) {
                                context
                                    .read<SignInBloc>()
                                    .add(PasswordEvents(value));
                                // print('password: ${value}');
                              }),
                              SizedBox(
                                height: 20.h,
                              ),
                              forgotPasswordOrNeedToRegster(
                                  'Forgot Password?', null),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text(
                                      'You don\'t have an account?',
                                      style: Styles.inputText
                                          .copyWith(fontSize: 15),
                                    ),
                                  ),
                                  //write the Register page after you done with the log in
                                  forgotPasswordOrNeedToRegster('Register!',
                                      () {
                                    Navigator.of(context).pushNamed(
                                      'register',
                                    );
                                  }),
                                ],
                              ),
                              SizedBox(
                                height: 60.h,
                              ),
                              Center(
                                child:
                                    buildLogInAndRegisterButton('Log In', () {
                                  SignInController(context: context)
                                      .handleSignIn('email');
                                  // print('got click!');
                                }),
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
      },
    );
  }
}
