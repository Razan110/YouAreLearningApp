import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnthings/screens/signin_and_register/bloc/register/register_bloc.dart';
import 'package:learnthings/screens/signin_and_register/bloc/signIn/signin_blocs.dart';
import 'package:learnthings/screens/welcomepage/bloc/welcome_blocs.dart';

class AppBlocProvider {
  static get allBlocProvider => [
        BlocProvider(
          lazy: false,
          create: (context) => WelcomeBloc(),
        ),
        BlocProvider(
          //lazy: false,
          create: (context) => SignInBloc(),
        ),
        BlocProvider(
          //lazy: false,
          create: (context) => RegisterBloc(),
        ),
      ];
}
