import 'package:flutter/material.dart';
import 'package:flutter_project/models/user/user_model.dart';


class UsersScreen extends StatelessWidget {
List<UserModel > users=[

  UserModel(
    id:1 ,
    name: 'mohamed',
    phone: '01096624155',
  ),
  UserModel(
    id:2 ,
    name: 'mahumed',
    phone: '01066624155',
  ),
  UserModel(
    id:3,
    name: 'ahmed',
    phone: '0125485328',
  ),
  UserModel(
    id:4 ,
    name: 'ali',
    phone: '012535652658',
  ),
  UserModel(
    id:5 ,
    name: 'mo',
    phone: '012348965',
  ),
  UserModel(
    id:6 ,
    name: 'zed',
    phone: '0215486320',
  ),
  UserModel(
    id:6 ,
    name: 'zed',
    phone: '0215486320',
  ),
  UserModel(
    id:2 ,
    name: 'mahumed',
    phone: '01066624155',
  ),
  UserModel(
    id:3,
    name: 'ahmed',
    phone: '0125485328',
  ),
  UserModel(
    id:6 ,
    name: 'zed',
    phone: '0215486320',
  ),
];


  @override

  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(itemBuilder:(context, index)=>buildUserItem(users[index]),
      itemCount:users.length ,
      separatorBuilder:(context, index)=>Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 20.0,
        ),
        child: Container(
          width: double.infinity,
          height: 1,
          color: Colors.grey[300],
        ),
      ),
      ),
    );
  }

  Widget buildUserItem(UserModel user)=>Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      children:[
        CircleAvatar(
          radius: 30.0,
          child:Text(
            '${user.id}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ) ,
          backgroundColor: Colors.indigo,
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize:MainAxisSize.min ,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phone }',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),

          ],
        ),

      ],

    ),
  );
}
