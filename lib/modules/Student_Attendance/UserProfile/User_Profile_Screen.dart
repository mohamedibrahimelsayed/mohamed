import 'package:flutter/material.dart';
import 'package:flutter_project/modules/Student_Attendance/Home/Attendance_Home_Screen.dart';
import 'package:flutter_project/shared/components/componants.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(22, 29, 111, 1),
        elevation: 0.0,
        titleSpacing: 20,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            navigateTo(context, AttendanceHomeScreen());
          },
        ),
        title: Text(
          'User Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: Color.fromRGBO(22, 29, 111, 1),
            borderRadius: BorderRadiusDirectional.only(
              bottomStart: Radius.circular(50),
              bottomEnd: Radius.circular(50),
            ),
          ),
        )
      ]),
    );
  }
}
