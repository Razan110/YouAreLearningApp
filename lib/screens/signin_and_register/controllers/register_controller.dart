// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:learnthings/screens/signin_and_register/bloc/register/register_bloc.dart';
// import 'package:learnthings/screens/signin_and_register/bloc/signIn/signin_blocs.dart';
// import 'package:learnthings/screens/widgets/flutter_toast.dart';

// class RegisterController {
//   final BuildContext context;

//   const RegisterController({required this.context});

// //to see what kids of signIn method an Email or google...
//   Future<void> handleSignIn(String type) async {
//     try {
//       if (type == 'email') {
//         //to acsses the bloc
//         final state = context.read<RegisterBloc>().state;
//         String emailAdress = state.email;
//         String password = state.password;
//         if (emailAdress.isEmpty && password.isEmpty) {
//           toastInfo(
//             msg:
//                 'Please write your email and password to Log In to your account!',
//           );
//         } else if (emailAdress.isEmpty) {
//           toastInfo(
//             msg: 'Please write your email to Log In to your account!',
//           );
//         } else if (password.isEmpty) {
//           toastInfo(
//             msg: 'Please write your password to Log In to your account!',
//           );
//         }

//         try {
//           final credential = await FirebaseAuth.instance
//               .signInWithEmailAndPassword(
//                   email: emailAdress, password: password);
//           if (credential.user == null) {
//             toastInfo(msg: 'user not flound');
//           }
//           if (credential.user!.emailVerified) {
//             print('user is not verified');
//           }

//           var user = credential.user;
//           if (user != null) {
//             // toastInfo(msg: 'User Found!');
//             print('User Found!');
//             //got verified user from firebase

//           } else {
//             print('no user');
//             //error getting user from friebase
//           }
//         } on FirebaseAuthException catch (e) {
//           if (e.code == 'user-not-found') {
//             print('No user found with this email!');
//           } else if (e.code == 'wrong-password') {
//             print('wrong password');
//           } else if (e.code == 'invalid-email') {
//             print('invalid-email');
//           }
//         }
//       }
//     } catch (e) {
//       //
//     }
//   }
// }
