import 'package:flutter/material.dart';
import 'package:flutter_project/modules/Student_Attendance/Home/Attendance_Home_Screen.dart';
import 'package:flutter_project/shared/components/componants.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var usernameController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();


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
      body: SingleChildScrollView(
        child: Stack(
            children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Color.fromRGBO(22, 29, 111, 1),
              borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(50),
                bottomEnd: Radius.circular(50),
              ),
            ),
          ),
              Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children:
                    [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 70,
              ),
                        child: Container(
                          height: 170,
                          width:300,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 193, 79, 1),
                            borderRadius: BorderRadiusDirectional.circular(10),
                          ),
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.center,
                        child: Column(
                          children:
                          [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                              NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHPzEJprm2H7C--vIa6fa1zz_QQZOb-CBpnQ&usqp=CAU',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Dr.Abdellatief',
                              style: TextStyle(
                                color: Color.fromRGBO(22, 29, 111, 1),
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              'Dr-Abdellatief@sha.edu.eg',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        defaultFormField(
                            controller: usernameController,
                            type: TextInputType.name,
                            label: 'UserName',
                            prefix: Icons.person,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        defaultFormField(
                          controller: emailController,
                          type: TextInputType.emailAddress,
                          label: 'Email Address',
                          prefix: Icons.email_outlined,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        defaultFormField(
                          controller: passwordController,
                          type: TextInputType.visiblePassword,
                          label: 'password',
                          prefix: Icons.lock,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        defaultButton(

                          background: Color.fromRGBO(22, 29, 111, 1),
                          function: ()
                          {
                            navigateTo(context,AttendanceHomeScreen());
                          },
                          text: 'Logout',
                          isUpperCase: true,

                        ),
                      ],
                    ),
                  )
                ],

              )
        ]),
      ),
    );
  }
}
