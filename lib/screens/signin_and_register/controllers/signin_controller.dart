import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnthings/screens/signin_and_register/bloc/signIn/signin_blocs.dart';
import 'package:learnthings/screens/widgets/flutter_toast.dart';

class SignInController {
  final BuildContext context;

  const SignInController({required this.context});

//to see what kids of signIn method an Email or google...
  Future<void> handleSignIn(String type) async {
    try {
      if (type == 'email') {
        //to acsses the bloc
        final state = context.read<SignInBloc>().state;
        String emailAdress = state.email;
        String password = state.password;
        if (emailAdress.isEmpty && password.isEmpty) {
          toastInfo(
            msg:
                'Please write your email and password to Log In to your account!',
          );
        } else if (emailAdress.isEmpty) {
          toastInfo(
            msg: 'Please write your email to Log In to your account!',
          );
        } else if (password.isEmpty) {
          toastInfo(
            msg: 'Please write your password to Log In to your account!',
          );
        }

        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: emailAdress, password: password);
          var user = credential.user;
          if (credential.user == null) {
            toastInfo(msg: 'User not flound');
          } else if (!credential.user!.emailVerified) {
            toastInfo(
                msg:
                    'User is not verified please check your email and verify your account');
          } else if (user != null) {
            // toastInfo(msg: 'User Found!');
            toastInfo(msg: 'User exist!');
            //got verified user from firebase

          } else {
            toastInfo(msg: 'No user found!');
            //error getting user from friebase
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            toastInfo(msg: 'No user found with this email!');
          } else if (e.code == 'wrong-password') {
            toastInfo(msg: 'Wrong password');
          } else if (e.code == 'invalid-email') {
            toastInfo(msg: 'Invalid-email');
          }
        }
      }
    } catch (e) {
      //
    }
  }
}
