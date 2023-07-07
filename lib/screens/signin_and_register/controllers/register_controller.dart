import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnthings/screens/signin_and_register/bloc/register/register_bloc.dart';
import 'package:learnthings/screens/widgets/flutter_toast.dart';

class RegisterController {
  final BuildContext context;

  const RegisterController({required this.context});

//to see what kids of signIn method an Email or google...
  Future<void> handleRegister() async {
    //to acsses the bloc
    final state = context.read<RegisterBloc>().state;
    String userName = state.userName;
    String password = state.password;
    String emailAdress = state.email;
    String rePassword = state.rePassword;
    if (emailAdress.isEmpty &&
        password.isEmpty &&
        userName.isEmpty &&
        rePassword.isEmpty) {
      toastInfo(msg: 'Please write your details below to creat an account!');
    } else if (userName.isEmpty) {
      toastInfo(msg: 'User name is empty');
    } else if (emailAdress.isEmpty) {
      toastInfo(msg: 'Email is empty');
    } else if (password.isEmpty) {
      toastInfo(msg: 'Please write your password');
    } else if (rePassword.isEmpty) {
      toastInfo(msg: 'Please re-enter your password');
    }

    if (rePassword != password) {
      toastInfo(
          msg: 'Make sure the password and confirmiton password are match!');
    }

    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailAdress, password: password);
      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(userName);
        toastInfo(
            msg:
                'We have send a verification link to your email. Please check and verified your account');
        Navigator.of(context).pop();
      }
      if (!credential.user!.emailVerified) {
        toastInfo(msg: 'User is register but is\'nt verified');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        toastInfo(msg: 'Your password is weak');
      } else if (e.code == 'email-already-in-use') {
        toastInfo(msg: 'The email is already in use');
      } else if (e.code == 'invalid-email') {
        toastInfo(msg: 'Your email is invalid');
      }
    }
  }
}
