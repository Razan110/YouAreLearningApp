import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnthings/routes/route_names.dart';
import 'package:learnthings/screens/application/bloc/app_bloc.dart';
import 'package:learnthings/screens/application/application.dart';
import 'package:learnthings/screens/forgetPassword/forget_password.dart';
import 'package:learnthings/screens/signin_and_register/bloc/register/register_bloc.dart';
import 'package:learnthings/screens/signin_and_register/bloc/signIn/signin_blocs.dart';
import 'package:learnthings/screens/signin_and_register/register.dart';
import 'package:learnthings/screens/signin_and_register/sign_in.dart';
import 'package:learnthings/screens/welcomepage/bloc/welcome_blocs.dart';
import 'package:learnthings/screens/welcomepage/welcomepage.dart';

//compine all of the routes and pages and blocs...
class AppPages {
  static List<PagesEntity> routes() {
    return [
      PagesEntity(
        route: AppRoutes.initalPage,
        page: const Welcome(),
        bloc: BlocProvider(create: (_) => WelcomeBloc()),
      ),
      PagesEntity(
        route: AppRoutes.signInPage,
        page: const SignIn(),
        bloc: BlocProvider(create: (_) => SignInBloc()),
      ),
      PagesEntity(
        route: AppRoutes.signUpPage,
        page: const Register(),
        bloc: BlocProvider(create: (_) => RegisterBloc()),
      ),
      PagesEntity(
        route: AppRoutes.welcome,
        page: const Welcome(),
        bloc: BlocProvider(create: (_) => WelcomeBloc()),
      ),
      // PagesEntity(
      //   route: AppRoutes.forgetPassword,
      //   page: const ForgetPassword(),
      //   //change it later !!!!!!!!!!!!**
      //   bloc: BlocProvider(create: (_) => ForgetPasswordBloc()),
      // ),
      PagesEntity(
        route: AppRoutes.application,
        page: const Application(),
        //change it later !!!!!!!!!!!!**
        bloc: BlocProvider(create: (_) => AppBloc()),
      ),
    ];
  }

  //acsses to all of the blockProviders and puts them in to a list
  static List<dynamic> allBlocProviders(BuildContext context) {
    List<dynamic> blocProvider = <dynamic>[];
    for (var bloc in routes()) {
      blocProvider.add(bloc.bloc);
    }
    return blocProvider;
  }

//modal that cover the entier screen as we click on navigator object
  static MaterialPageRoute generateRoutSetting(RouteSettings settings) {
    if (settings.name != null) {
      //check for route name matching when navigetor triggered
      var result = routes().where((element) => element.route == settings.name);
      //check if result is emty or not and return a widget
      if (result.isNotEmpty) {
        return MaterialPageRoute(
            builder: (_) => result.first.page, settings: settings);
      }
    }
    //if there is no widget set the sign in as a defult route or page
    return MaterialPageRoute(
        builder: (_) => const SignIn(), settings: settings);
  }
}

//unify BlockProvider and routs and pages
class PagesEntity {
  String route;
  Widget page;
  dynamic bloc;
  PagesEntity({required this.route, required this.page, this.bloc});
}
