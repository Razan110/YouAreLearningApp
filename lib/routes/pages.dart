import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnthings/global.dart';
import 'package:learnthings/routes/route_names.dart';
import 'package:learnthings/screens/application/bloc/app_bloc.dart';
import 'package:learnthings/screens/application/application.dart';
import 'package:learnthings/screens/application/home/bloc/home_bloc.dart';
import 'package:learnthings/screens/application/home/home.dart';
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
      PagesEntity(
        route: AppRoutes.application,
        page: const Application(),
        bloc: BlocProvider(create: (_) => AppBloc()),
      ),
      PagesEntity(
        route: AppRoutes.home,
        page: const HomePage(),
        bloc: BlocProvider(create: (_) => HomeBloc()),
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

//this func to redirect our route to diffrent pages and screens
  static MaterialPageRoute generateRoutSetting(RouteSettings settings) {
    if (settings.name != null) {
      //check for route name matching when navigetor triggered
      var result = routes().where((element) => element.route == settings.name);
      //check if result is emty or not and return a widget
      if (result.isNotEmpty) {
        //to checke the value of STORAGE_DEVICE_OPEN_FIRST_TIME
        bool deviceFirstOpen = Global.storageService.getDeviceFirstOpen();
        //if de deviceFirstOpen was true which is mean the app is already opend then the first page is signin if not welcome
        if (result.first.route == AppRoutes.initalPage && deviceFirstOpen) {
          bool isLoggedIn = Global.storageService.getIsLoggedIn();
          //ig the user already logged in
          if (isLoggedIn) {
            return MaterialPageRoute(
                builder: (_) => const Application(), settings: settings);
          } else {
            return MaterialPageRoute(
                builder: (_) => const SignIn(), settings: settings);
          }
        }
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
