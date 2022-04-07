import 'package:flutter/material.dart';
import 'package:flutter_project/modules/Student_Attendance/Auto/Attendance_Auto_Screen.dart';
import 'package:flutter_project/modules/Student_Attendance/Home/Attendance_Home_Screen.dart';
import 'package:flutter_project/shared/components/componants.dart';
class AttendanceLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image(
              image: AssetImage(
                'assets/image/login.jpeg',
              ),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Center(
          child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    defaultFormField(
                      controller: emailController,
                      type: TextInputType.emailAddress,
                      validate: (String value) {
                        if (value.isEmpty) {
                          return 'please enter your email address';
                        }
                      },
                      label: 'Email Address',
                      prefix: Icons.email_outlined,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    defaultFormField(
                      controller: passwordController,
                      type: TextInputType.visiblePassword,
                      suffix: Icons.visibility_outlined,
                      suffixPressed: () {},
                      validate: (String value) {
                        if (value.isEmpty) {
                          return 'password is too short';
                        }
                      },
                      label: 'Password',
                      prefix: Icons.lock_outline,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    defaultButton(
                      background: Colors.white.withOpacity(0.3),
                      function: ()
                      {
                        navigateTo(context,AttendanceHomeScreen());
                      },
                      text: 'login',
                      isUpperCase: true,
                    ),
                  ],
                ),
              ),
            ),
        ),
        ],
      ),
    );
  }
}
