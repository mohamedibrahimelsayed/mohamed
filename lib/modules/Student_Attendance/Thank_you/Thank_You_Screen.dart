import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/modules/Student_Attendance/Home/Attendance_Home_Screen.dart';
import 'package:flutter_project/modules/Student_Attendance/Report/Attendance_Report_Screen.dart';
import 'package:flutter_project/shared/components/componants.dart';

class AttendanceThankYouScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(22, 29, 111, 1),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                image: AssetImage
                  (
                  'assets/image/Thank you.jpeg',
                ),
            ),
            Text(
              'Thank you!',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text('We are glad to serve you',
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontSize: 20,
            ),
            ),
            SizedBox(
              height: 50,
            ),

            defaultButton(

              function:()
              {
                navigateTo(context, AttendanceReportScreen());

              },
              radius: 20,
              width: 300,
              text: 'Generate Report',
              isUpperCase: true,
              background: Color.fromRGBO(255, 193, 79, 1),
            ),
            SizedBox(
              height: 20,
            ),
            defaultButton(
              function:()
              {
                navigateTo(context, AttendanceHomeScreen());

              },
              radius: 20,
              width: 300,
              text: 'Continue',
              isUpperCase: true,
              background: Colors.blue.withOpacity(.2),
            ),
          ],
        ),
      ),
    );
  }
}
