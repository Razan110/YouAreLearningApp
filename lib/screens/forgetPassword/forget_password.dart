import 'package:flutter/material.dart';
import 'package:learnthings/routes/route_names.dart';
import 'package:learnthings/screens/signin_and_register/widgets/singin_register_widgets.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarLogInAndRegister('Forget password', () {
        Navigator.of(context).popAndPushNamed(AppRoutes.signInPage);
      }),
      body: Container(
        color: Styles.bgColor,
      ),
    );
  }
}
