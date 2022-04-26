import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/modules/Student_Attendance/BeforeLogin/Before_Login.dart';
import 'package:flutter_project/modules/Student_Attendance/login/Attendance_Login_Screen.dart';
import 'package:flutter_project/shared/components/componants.dart';

class OnHashScreen extends StatefulWidget {
  @override
  _OnHashScreenState createState() => _OnHashScreenState();
}
class _OnHashScreenState extends State<OnHashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      navigateAndFinish(context, BeforeLoginScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Stack(
            fit: StackFit.expand,
            children:
            [
          Expanded(
           child: Container(
              child:
              Image(
          image:
          AssetImage
            (
            'assets/image/hashing.jpeg',
          ),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      )
          )
    ]
        )
    );
  }
}
