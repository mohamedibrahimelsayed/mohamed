import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/layout/news_App/cubit/cubit.dart';
import 'package:flutter_project/layout/news_App/cubit/states.dart';
import 'package:flutter_project/shared/components/componants.dart';


class BusinessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state)
      {
        var list = NewsCubit.get(context).business;

        return articleBuilder(list,context);
      },
    );
  }
}
