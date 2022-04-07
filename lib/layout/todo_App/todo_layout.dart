import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/shared/components/componants.dart';
import 'package:flutter_project/shared/components/constants.dart';
import 'package:flutter_project/shared/cubit/cubit.dart';
import 'package:flutter_project/shared/cubit/states.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';


class HomeLayout extends StatelessWidget
{
  var scaffoldKey=GlobalKey<ScaffoldState>();
  var formKey=GlobalKey<FormState>();
  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
  return BlocProvider(
    create: (BuildContext context) =>AppCubit()..createDatabase(),
    child:BlocConsumer<AppCubit,AppStates >(
      listener: (BuildContext context ,AppStates states)
      {
        if(states is AppInsertDatabaseState)
        {
          Navigator.pop(context);
        }
      },
      builder: (BuildContext context ,AppStates states)
      {
        AppCubit cubit = AppCubit.get(context);
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            title: Text(
              cubit.title[cubit.currentIndex],
            ),
          ),
          body:ConditionalBuilder(
            condition: states is! AppGetDatabaseLoadingState,
            builder: (context)=>cubit.screen[cubit.currentIndex],
            fallback: (context)=>Center(child: CircularProgressIndicator()),
          )  ,
          floatingActionButton: FloatingActionButton(
            onPressed: () // async
            {
              if(cubit.isButtonSheetShown)
              {
                if(formKey.currentState.validate()){
                // insertDatabase(
                //     title:titleController.text ,
                //     time: timeController.text,
                //     date: dateController.text,
                //   ).then((value)
                //   {
                //     getDataFromDatabase(database).then((value)
                //     {
                //       Navigator.pop(context);
                //       isButtonSheetShown=false;
                //
                //       // setState(() {
                //       // febIcon= Icons.edit;
                //       // });
                //
                //       tasks=value;
                //     });
                //
                //   });
                  cubit.insertDatabase(title:titleController.text,
                      time: timeController.text,
                      date: dateController.text);
                }
              }
              else
              {
                scaffoldKey.currentState.showBottomSheet(
                        (context) => Container(
                      color: Colors.grey[200],
                      padding: EdgeInsets.all(20.0,),

                      child:Form(
                        key: formKey,
                        child: Column(
                          mainAxisSize:MainAxisSize.min,
                          children:[
                            defaultFormField(
                              controller: titleController,
                              type: TextInputType.text,
                              validate: (String value)
                              {
                                if(value.isEmpty)
                                {
                                  return'title must not be empty ';
                                }
                                return null;
                              },
                              label: 'Task Title',
                              prefix: Icons.title,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            defaultFormField(
                              controller: timeController,
                              type: TextInputType.datetime,
                              onTap: ()
                              {
                                showTimePicker(
                                  context:context,
                                  initialTime: TimeOfDay.now(),
                                ).then((value)
                                {
                                  timeController.text=value.format(context).toString();
                                  print(value.format(context));
                                });
                              },
                              validate: (String value)
                              {
                                if(value.isEmpty)
                                {
                                  return'time must not be empty ';
                                }
                                return null;
                              },
                              label: 'Task time',
                              prefix: Icons.watch_later_outlined,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            defaultFormField(
                              onTap: ()
                              {
                                showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime.parse('2022-01-01'),
                                ).then((value)
                                {
                                  print(DateFormat.yMMMd().format(value));
                                  dateController.text=DateFormat.yMMMd().format(value);

                                });

                              },
                              controller: dateController,
                              type: TextInputType.datetime,
                              validate: (String value)
                              {
                                if(value.isEmpty)
                                {
                                  return'date must not be empty';
                                }
                                return null;
                              },
                              label: 'Task Date',
                              prefix: Icons.calendar_today,
                            )
                          ],

                        ),
                      ),
                    )
                ).closed.then((value)
                {
                cubit.changeBottomSheetShown(
                  inShown:false,
                  icon: Icons.edit,
                );
                });
                cubit.changeBottomSheetShown(
                  inShown: true,
                  icon: Icons.add,
                );
              }
            },
            child: Icon(
              cubit.febIcon,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex:  cubit.currentIndex,
            onTap: (index)
            {
              cubit.changeIndex(index);
            },
            items:
            [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                ),
                label: 'Tasks',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.check_circle_outline,
                ),
                label: 'Done',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.archive_outlined,
                ),
                label: 'Archive',
              ),
            ],
          ),
        );
      },
    ),
  );
  }
  // Future<String> getName () async
  // {
  //   return 'mahmoud';
  // }
}
