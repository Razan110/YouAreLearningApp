import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnthings/screens/application/bloc/app_bloc.dart';
import 'package:learnthings/screens/application/bloc/app_events.dart';
import 'package:learnthings/screens/application/bloc/app_states.dart';
import 'package:learnthings/screens/application/widget/page_widget.dart';
import 'package:learnthings/screens/application/widget/reuseable_widgets.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppStates>(
      builder: (context, state) {
        return Scaffold(
          // appBar: buildAppBar('', null),
          body: buildPage(state.index),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                context.read<AppBloc>().add(TriggerAppEvents(value));
              });
            },
            currentIndex: state.index,
            backgroundColor: Styles.bgColor,
            elevation: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Styles.bottomBarColor,
            unselectedItemColor: Styles.bottomBarColor,
            type: BottomNavigationBarType.fixed,
            items: bottomNavigationItems,
          ),
        );
      },
    );
  }
}
