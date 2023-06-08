import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnthings/routes/route_names.dart';
import 'package:learnthings/screens/signin_and_register/bloc/register/register_bloc.dart';
import 'package:learnthings/screens/signin_and_register/bloc/register/register_events.dart';
import 'package:learnthings/screens/signin_and_register/bloc/register/register_states.dart';
import 'package:learnthings/screens/signin_and_register/controllers/register_controller.dart';
import 'package:learnthings/screens/signin_and_register/widgets/singin_register_widgets.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterStates>(
      builder: (context, state) {
        return Container(
          color: Styles.bgColor,
          child: SafeArea(
            child: Scaffold(
              appBar: buildAppBarLogInAndRegister('Sing Up', () {
                Navigator.of(context).popAndPushNamed(AppRoutes.signInPage);
              }),
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
                        child: reuseableText(
                            'Or use your enter your details to sing up'),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        margin: EdgeInsets.only(top: 20.h, bottom: 125.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            reuseableText('User name'),
                            SizedBox(
                              height: 5.h,
                            ),
                            buildTextField(
                                'user',
                                'Enter your user name',
                                'assets/images/user.png',
                                TextInputType.emailAddress, (value) {
                              context
                                  .read<RegisterBloc>()
                                  .add(UserNamevents(value));
                            }),
                            SizedBox(
                              height: 15.h,
                            ),
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
                                  .read<RegisterBloc>()
                                  .add(Emailevents(value));
                            }),
                            SizedBox(
                              height: 15.h,
                            ),
                            reuseableText('Password'),
                            SizedBox(
                              height: 5.h,
                            ),
                            buildTextField(
                                'password',
                                'Enter your password',
                                'assets/images/padlock.png',
                                TextInputType.multiline, (value) {
                              context
                                  .read<RegisterBloc>()
                                  .add(PasswordEvents(value));
                              // print('password: ${value}');
                            }),
                            SizedBox(
                              height: 15.h,
                            ),
                            reuseableText('Re-enter password'),
                            SizedBox(
                              height: 5.h,
                            ),
                            buildTextField(
                                'password',
                                'Confirm your password',
                                'assets/images/padlock.png',
                                TextInputType.multiline, (value) {
                              context
                                  .read<RegisterBloc>()
                                  .add(RePasswordEvents(value));
                            }),
                            SizedBox(
                              height: 5.h,
                            ),
                            reuseableText(
                                'By creating an account you are agreeing to our tearm and conditions.'),
                            SizedBox(
                              height: 5.h,
                            ),
                            Center(
                              child: buildLogInAndRegisterButton('Sign Up', () {
                                RegisterController(context: context)
                                    .handleRegister();
                                // print('got click!');
                              }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
