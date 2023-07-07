import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnthings/screens/application/home/bloc/home_states.dart';
import 'package:learnthings/screens/application/home/widget/widgets.dart';
import 'package:learnthings/screens/application/widget/reuseable_widgets.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

import 'bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: pagesBuildAppBar(null),
      backgroundColor: Styles.bgColorDarcker,
      body: BlocBuilder<HomeBloc, HomeStates>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(
              children: [
                buildTextField(
                  'Search...',
                  'assets/images/search-interface-symbol.png',
                  TextInputType.text,
                  (value) {},
                ),
                slidersView(context, state),
                menuView(
                  'Choice your course',
                  'View all',
                  () {
                    //  print('tapp');
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
