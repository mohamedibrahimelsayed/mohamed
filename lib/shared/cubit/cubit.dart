import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/modules/todo_app/Archived/Archived_Tasks_screen.dart';
import 'package:flutter_project/modules/todo_app/Archived/Done/Done_Tasks_screen.dart';
import 'package:flutter_project/modules/todo_app/Archived/New_Tasks/New_Tasks_screen.dart';
import 'package:flutter_project/shared/components/constants.dart';
import 'package:flutter_project/shared/cubit/states.dart';
import 'package:flutter_project/shared/network/local/cache_helper.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialStates());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screen = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<String> title = [
    'New Tasks',
    'Done Tasks',
    'Archive tasks',
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarStates());
  }

  Database database;

  List<Map> newTasks = [];
  List<Map> doneTasks = [];
  List<Map> archivedTasks = [];

  void createDatabase() {
    openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) {
        print('database created');
        database
            .execute(
                'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)')
            .then((value) {
          print('table created');
        }).catchError((error) {
          print('Error When Creating Table ${error.toString()}');
        });
      },
      onOpen: (database) {
        getDataFromDatabase(database);
        print('database opened');
      },
    ).then((value) {
      database = value;
      emit(AppCreateDatabaseState());
    });
  }

  insertDatabase({
    @required String title,
    @required String time,
    @required String date,
  }) async {
    await database.transaction((txn) {
      txn
          .rawInsert(
              'INSERT INTO TASKS(title,date,time,status)VALUES("$title","$date","$time","new")')
          .then((value) {
        print('$value inserted successfully');
        emit(AppInsertDatabaseState());

        getDataFromDatabase(database);
      }).catchError((error) {
        print('Error When inserting new record ${error.toString()}');
      });

      return null;
    });
  }

  void getDataFromDatabase(database) {
    newTasks = [];
    doneTasks = [];
    archivedTasks = [];

    emit(AppGetDatabaseLoadingState());
    database.rawQuery('SELECT *FROM tasks').then((value) {
      value.forEach((element) {
        if (element['status'] == 'new')
          newTasks.add(element);
        else if (element['status'] == 'done')
          doneTasks.add(element);
        else
          archivedTasks.add(element);
      });
      emit(AppGetDatabaseState());
    });
  }

  void updateData({
    @required String status,
    @required int id,
  }) async {
    database.rawUpdate('UPDATE tasks SET status = ? WHERE id = ?', [
      '$status',
      id,
    ]).then((value) {
      getDataFromDatabase(database);

      emit(AppUpdateDatabaseState());
    });
  }

  void deleteData({
    @required int id,
  }) async {
    database.rawDelete('DELETE FROM tasks WHERE id = ?', [id]).then((value) {
      getDataFromDatabase(database);

      emit(AppDeleteDatabaseState());
    });
  }

  bool isButtonSheetShown = false;
  IconData febIcon = Icons.edit;

  void changeBottomSheetShown({
    @required bool inShown,
    @required IconData icon,
  }) {
    isButtonSheetShown = inShown;
    febIcon = icon;
    emit(AppChangeBottomSheetStates());
  }

  bool isDark = true;

  void changeAppMode({bool fromShared})
  {
    if(fromShared !=null)
      {
        isDark=fromShared;

        emit(AppChangeModeStates());

      }
    else
      {
        isDark = !isDark;
        CacheHelper.putBoolean(key: 'isDark',
            value: isDark).then((value)
        {
          emit(AppChangeModeStates());

        });
      }

  }
}
