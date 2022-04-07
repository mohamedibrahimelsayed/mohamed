import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/layout/shop_app/cubit/cubit.dart';
import 'package:flutter_project/layout/todo_App/todo_layout.dart';
import 'package:flutter_project/modules/Student_Attendance/login/Attendance_Login_Screen.dart';
import 'package:flutter_project/modules/Student_Attendance/on_hash_screen.dart';
import 'package:flutter_project/modules/shop_app/login/shop_login_screen.dart';
import 'package:flutter_project/modules/shop_app/on_boarding/on_boarding_screen.dart';
import 'package:flutter_project/shared/bloc_observer.dart';
import 'package:flutter_project/shared/components/componants.dart';
import 'package:flutter_project/shared/components/constants.dart';
import 'package:flutter_project/shared/cubit/cubit.dart';
import 'package:flutter_project/shared/cubit/states.dart';
import 'package:flutter_project/shared/network/local/cache_helper.dart';
import 'package:flutter_project/shared/network/remote/dio_helper.dart';
import 'package:flutter_project/shared/styles/themes.dart';
import 'package:hexcolor/hexcolor.dart';
import 'layout/news_App/cubit/cubit.dart';
import 'layout/news_App/news_layout.dart';
import 'layout/shop_app/shop_layout.dart';
import 'modules/Student_Attendance/Auto/Attendance_Auto_Screen.dart';
import 'modules/Student_Attendance/Home/Attendance_Home_Screen.dart';
void main() async {
  // بيتاكد ان كل حاجه في الميثود خلصت وبعدين يفتح الابلكيشن
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();
  bool isDark =CacheHelper.getData(key: 'is Dark');
  Widget widget;
  bool onBoarding =CacheHelper.getData(key: 'onBoarding');
  token =CacheHelper.getData(key: 'token');
  print(token);
  if(onBoarding !=null)
    {
      if(token!=null )widget =ShopLayout();
      else widget =ShopLoginScreen();
    }else
      {
        widget =OnBoardingScreen();
      }
  runApp(
      MyApp(
        isDark: isDark,
        startWidget : widget,
  ));
}
// Stateless
// Stateful
// class MyApp
class MyApp extends StatelessWidget {
  // constructor
  // build
  final bool isDark;
  final Widget startWidget;

  MyApp({this.isDark,this.startWidget});
  @override
  Widget build(context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create:(context)=>NewsCubit()
              ..getBusiness()
              ..getSports()
              ..getScience()),
        BlocProvider(
          create: (BuildContext context) => AppCubit()
            ..changeAppMode(
          fromShared: isDark,
        ),),
        BlocProvider(
          create: (BuildContext context) => ShopCubit()..getHomeData()
            ..getCategories()
           ..getFavorites()
           ..getUserData(),
            ),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme:  lightTheme,
            darkTheme: darkTheme,
            themeMode: AppCubit.get(context).isDark?ThemeMode.dark:ThemeMode.light,
            home:OnHashScreen(),
          );
        },
      ),
    );
  }
}
