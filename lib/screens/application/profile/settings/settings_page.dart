import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnthings/screens/application/profile/settings/bloc/setting_bloc.dart';
import 'package:learnthings/screens/application/profile/settings/bloc/setting_states.dart';
import 'package:learnthings/screens/application/profile/settings/widgets/widgets.dart';
import 'package:learnthings/screens/application/widget/reuseable_widgets.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: pagesBuildAppBarPageName('Settings'),
      body: SingleChildScrollView(
        child: BlocBuilder<SettingsBloc, SettingsStates>(
          builder: (context, state) {
            return Container(
              decoration: BoxDecoration(color: Styles.bgColorDarcker),
              child: Column(
                children: [
                  Text(
                    'data',
                    style: Styles.headLine1,
                  ),
                  logOutButton(null),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
