import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnthings/img.dart';
import 'package:learnthings/routes/routes.dart';
import 'package:learnthings/screens/application/application.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

import 'global.dart';

Future<void> main() async {
  await Global.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [...AppPages.allBlocProviders(context)],
      child: ScreenUtilInit(
        //standerd size
        designSize: const Size(375, 812),
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme:
                AppBarTheme(elevation: 0, backgroundColor: Styles.bgColor),
          ),
          //home: const Img(),
          onGenerateRoute: AppPages.generateRoutSetting,
        ),
      ),
    );
  }
}
