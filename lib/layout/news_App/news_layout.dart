import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/layout/news_App/cubit/cubit.dart';
import 'package:flutter_project/layout/news_App/cubit/states.dart';
import 'package:flutter_project/modules/news_app/search/search_screen.dart';
import 'package:flutter_project/shared/components/componants.dart';
import 'package:flutter_project/shared/cubit/cubit.dart';

class NewsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = NewsCubit.get(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(
              'News App',
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: ()
                {
                  navigateTo(context,SearchScreen());


                },
              ),
              IconButton(
                icon: Icon(
                  Icons.brightness_4_outlined,
                ),
                onPressed: ()
                {
                  AppCubit.get(context).changeAppMode();
                },
              ),
            ],
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeBottomNavBar(index);
            },
            items: cubit.bottomItems,
          ),
        );
      },
    );
  }
}
