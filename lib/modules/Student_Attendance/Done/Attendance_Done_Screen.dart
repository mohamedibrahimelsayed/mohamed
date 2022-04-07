// الكود بتاعي عاوزه
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_project/modules/Student_Attendance/Auto/Attendance_Auto_Screen.dart';
// import 'package:flutter_project/modules/Student_Attendance/Thank_you/Thank_You_Screen.dart';
// import 'package:flutter_project/shared/components/componants.dart';
//
// class AttendanceDoneScreen extends StatefulWidget {
//   @override
//   _AttendanceDoneScreenState createState() => _AttendanceDoneScreenState();
// }
//
// class _AttendanceDoneScreenState extends State<AttendanceDoneScreen> {
//   bool isChecked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor:  Color.fromRGBO(255, 193, 79, 1) ,
//         elevation: 0.0,
//         titleSpacing: 20,
//         leading: IconButton(
//           icon:Icon(Icons.arrow_back_ios),
//           color: Color.fromRGBO(22, 29, 111, 1),
//           onPressed: ()
//           {
//             navigateTo(context, AttendanceAutoScreen());
//           },
//         ),
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               'Auto Attendance',
//               style: TextStyle(
//                 color:Color.fromRGBO(22, 29, 111, 1),
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//         actions:
//         [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Icon(
//               Icons.notifications_active_rounded,
//               color: Color.fromRGBO(22, 29, 111, 1),
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children:
//           [
//             Container(
//           height: 60,
//           decoration: BoxDecoration(
//             color: Color.fromRGBO(255, 193, 79,1),
//             borderRadius: BorderRadiusDirectional.only(
//               bottomStart: Radius.circular(50),
//               bottomEnd: Radius.circular(50),
//             ),
//           ),
//         ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Column(
//                   children: [
//                  SizedBox(
//                 height: 15.0,
//               ),
//                  Row(
//                 children: [
//                   CircleAvatar(
//                     radius:30.0,
//                     backgroundImage: NetworkImage('https://www.clipartmax.com/png/middle/290-2901540_student-icon-male-student-icon-png.png'),
//
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(
//                           'Mohamed ibrahim ',
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Row(
//
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children:
//                     [
//                       Column(
//
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             '3CS',
//                             style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                           ),
//                           Text('8:55',
//                             style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Checkbox(
//                         activeColor: Color.fromRGBO(255, 193, 79, 1) ,
//                         value: isChecked,
//                         onChanged: (bool value)
//                         {
//                           setState(()
//                           {
//                             isChecked = value;
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//                  SizedBox(
//                 height: 10.0,
//               ),
//                  Row(
//                 children: [
//                   CircleAvatar(
//                     radius:30.0,
//                     backgroundImage: NetworkImage('https://www.clipartmax.com/png/middle/290-2901540_student-icon-male-student-icon-png.png'),
//
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Mohamed ibrahim ',
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children:
//                     [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             '3CS',
//                             style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                           ),
//                           Text('8:55',
//                             style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Checkbox(
//                         activeColor: Color.fromRGBO(255, 193, 79, 1) ,
//                         value: isChecked,
//                         onChanged: (bool value)
//                         {
//                           setState(() {
//                             isChecked = value;
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//
//                 ],
//
//               ),
//                  SizedBox(
//                 height: 10.0,
//               ),
//                  Row(
//                 children: [
//                   CircleAvatar(
//                     radius:30.0,
//                     backgroundImage: NetworkImage('https://www.clipartmax.com/png/middle/290-2901540_student-icon-male-student-icon-png.png'),
//
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Mohamed ibrahim ',
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children:
//                     [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             '3CS',
//                             style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                           ),
//                           Text('8:55',
//                             style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Checkbox(
//                         activeColor: Color.fromRGBO(255, 193, 79, 1) ,
//                         value: isChecked,
//                         onChanged: (bool value)
//                         {
//                           setState(() {
//                             isChecked = value;
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//                  SizedBox(
//                 height: 10.0,
//               ),
//                  Row(
//                 children: [
//                   CircleAvatar(
//                     radius:30.0,
//                     backgroundImage: NetworkImage('https://www.clipartmax.com/png/middle/290-2901540_student-icon-male-student-icon-png.png'),
//
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Mohamed ibrahim ',
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children:
//                     [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             '3CS',
//                             style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                           ),
//                           Text('8:55',
//                             style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Checkbox(
//                         activeColor: Color.fromRGBO(255, 193, 79, 1) ,
//                         value: isChecked,
//                         onChanged: (bool value)
//                         {
//                           setState(() {
//                             isChecked = value;
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//                    SizedBox(
//                 height: 10.0,
//               ),
//                  Row(
//                 children: [
//                   CircleAvatar(
//                     radius:30.0,
//                     backgroundImage: NetworkImage('https://www.clipartmax.com/png/middle/290-2901540_student-icon-male-student-icon-png.png'),
//
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Mohamed ibrahim ',
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children:
//                     [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             '3CS',
//                             style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                           ),
//                           Text('8:55',
//                             style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Checkbox(
//                         activeColor: Color.fromRGBO(255, 193, 79, 1) ,
//                         value: isChecked,
//                         onChanged: (bool value)
//                         {
//                           setState(() {
//                             isChecked = value;
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//                   SizedBox(
//                 height: 10.0,
//               ),
//                  Row(
//                 children: [
//                   CircleAvatar(
//                     radius:30.0,
//                     backgroundImage: NetworkImage('https://www.clipartmax.com/png/middle/290-2901540_student-icon-male-student-icon-png.png'),
//
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Mohamed ibrahim ',
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children:
//                     [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             '3CS',
//                             style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                           ),
//                           Text('8:55',
//                             style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Checkbox(
//                         activeColor: Color.fromRGBO(255, 193, 79, 1) ,
//                         value: isChecked,
//                         onChanged: (bool value)
//                         {
//                           setState(() {
//                             isChecked = value;
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//                  SizedBox(
//                 height: 10.0,
//               ),
//                   Row(
//                 children: [
//                   CircleAvatar(
//                     radius:30.0,
//                     backgroundImage: NetworkImage('https://www.clipartmax.com/png/middle/290-2901540_student-icon-male-student-icon-png.png'),
//
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Mohamed ibrahim ',
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children:
//                     [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             '3CS',
//                             style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                           ),
//                           Text('8:55',
//                             style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                           ),
//                         ],
//                       ),
//
//                       Checkbox(
//                         activeColor: Color.fromRGBO(255, 193, 79, 1) ,
//                         value: isChecked,
//                         onChanged: (bool value)
//                         {
//                           setState(() {
//                             isChecked = value;
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//
//                 ],
//
//               ),
//                   SizedBox(
//                 height: 10.0,
//               ),
//                    Row(
//                 children: [
//                   CircleAvatar(
//                     radius:30.0,
//                     backgroundImage: NetworkImage('https://www.clipartmax.com/png/middle/290-2901540_student-icon-male-student-icon-png.png'),
//
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Mohamed ibrahim ',
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children:
//                     [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             '3CS',
//                             style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                           ),
//                           Text('8:55',
//                             style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                           ),
//                         ],
//                       ),
//
//                       Checkbox(
//                         activeColor: Color.fromRGBO(255, 193, 79, 1) ,
//                         value: isChecked,
//                         onChanged: (bool value)
//                         {
//                           setState(() {
//                             isChecked = value;
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//
//                 ],
//
//               ),
//                    SizedBox(
//                     height: 10.0,
//                   ),
//                     Row(
//                     children: [
//                       CircleAvatar(
//                         radius:30.0,
//                         backgroundImage: NetworkImage('https://www.clipartmax.com/png/middle/290-2901540_student-icon-male-student-icon-png.png'),
//
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             'Mohamed ibrahim ',
//                             style: TextStyle(
//                               fontSize: 16.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children:
//                         [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 '3CS',
//                                 style: TextStyle(
//                                   color: Colors.black.withOpacity(0.5),
//                                 ),
//                               ),
//                               Text('8:55',
//                                 style: TextStyle(
//                                   color: Colors.black.withOpacity(0.5),
//                                 ),
//                               ),
//                             ],
//                           ),
//
//                           Checkbox(
//                             activeColor: Color.fromRGBO(255, 193, 79, 1) ,
//                             value: isChecked,
//                             onChanged: (bool value)
//                             {
//                               setState(() {
//                                 isChecked = value;
//                               });
//                             },
//                           ),
//                         ],),],
//                   ),
//                     SizedBox(
//                       height: 10.0,
//                     ),
//                     Row(
//                       children: [
//                         CircleAvatar(
//                           radius:30.0,
//                           backgroundImage: NetworkImage('https://www.clipartmax.com/png/middle/290-2901540_student-icon-male-student-icon-png.png'),
//
//                         ),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Text(
//                               'Mohamed ibrahim ',
//                               style: TextStyle(
//                                 fontSize: 16.0,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           width: 20,
//                         ),
//
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children:
//                           [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   '3CS',
//                                   style: TextStyle(
//                                     color: Colors.black.withOpacity(0.5),
//                                   ),
//                                 ),
//                                 Text('8:55',
//                                   style: TextStyle(
//                                     color: Colors.black.withOpacity(0.5),
//                                   ),
//                                 ),
//                               ],
//                             ),
//
//                             Checkbox(
//                               activeColor: Color.fromRGBO(255, 193, 79, 1) ,
//                               value: isChecked,
//                               onChanged: (bool value)
//                               {
//                                 setState(() {
//                                   isChecked = value;
//                                 });
//                               },
//                             ),
//                           ],),],
//                     ),
//                 ]
//               ),),
//             Column(
//               children: [
//                 defaultButton(
//                   function:()
//                   {
//                     navigateTo(context,AttendanceThankYouScreen());
//                   },
//                   radius: 20,
//                   width: 200,
//                   text: 'Done',
//                   isUpperCase: true,
//                   background: Color.fromRGBO(22, 29, 111, 1),
//                 ),
//
//               ],
//             ),
//           ]
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_project/modules/Student_Attendance/Auto/Attendance_Auto_Screen.dart';
import 'package:flutter_project/modules/Student_Attendance/Thank_you/Thank_You_Screen.dart';
import 'package:flutter_project/shared/components/componants.dart';

class AutoAttendanceDoneScreen extends StatefulWidget {
  @override
  _AutoAttendanceDoneScreenState createState() => _AutoAttendanceDoneScreenState();
}
class _AutoAttendanceDoneScreenState extends State<AutoAttendanceDoneScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 193, 79, 1),
        elevation: 0.0,
        titleSpacing: 20,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color.fromRGBO(22, 29, 111, 1),
          onPressed: () {
            navigateTo(context, AttendanceAutoScreen());
          },
        ),
        title: Text(
          'Auto Attendance',
          style: TextStyle(
            color: Color.fromRGBO(22, 29, 111, 1),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 193, 79, 1),
              borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(50),
                bottomEnd: Radius.circular(50),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context , index) => Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://www.clipartmax.com/png/middle/290-2901540_student-icon-male-student-icon-png.png',
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Mohamed Ibrahim',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          '4cs',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '9:25',
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Checkbox(
                      activeColor: Color.fromRGBO(255, 193, 79, 1) ,
                      value: isChecked,
                      onChanged: (bool value)
                      {
                        setState(()
                        {
                          isChecked = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context , index) => myDivider(),
              itemCount: 15,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: defaultButton(
              function: ()
              {
                navigateTo(context, AttendanceThankYouScreen());
              },
              radius: 20,
              width: 200,
              text: 'done',
              isUpperCase: true,
              background: Color.fromRGBO(22, 29, 111, 1),
            ),
          ),
        ],
      ),
    );
  }
}
