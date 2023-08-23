import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      appBar: pagesBuildAppBar(null, ''),
      backgroundColor: Styles.bgColorDarcker,
      body: BlocBuilder<HomeBloc, HomeStates>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: buildTextField(
                  'Search...',
                  'assets/images/search-interface-symbol.png',
                  TextInputType.text,
                  (value) {},
                ),
              ),
              SliverToBoxAdapter(
                child: slidersView(context, state),
              ),
              SliverToBoxAdapter(
                child: menuView(
                  'Choice your course',
                  'View all',
                  () {
                    //  print('tapp');
                  },
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  vertical: 18.h,
                  horizontal: 10.w,
                ),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    //how many sequer in one row
                    crossAxisCount: 2,
                    //spaces
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 1.5,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    //how many sequers
                    childCount: 4,
                    (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {},
                        child: courseGraid(),
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
