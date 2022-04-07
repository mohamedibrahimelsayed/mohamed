import 'package:flutter/material.dart';
import 'package:flutter_project/modules/Student_Attendance/Done/Attendance_Done_Screen.dart';
import 'package:flutter_project/modules/Student_Attendance/Home/Attendance_Home_Screen.dart';
import 'package:flutter_project/shared/components/componants.dart';
import 'package:table_calendar/table_calendar.dart';

class AttendanceAutoScreen extends StatefulWidget
{
  @override
  _AttendanceAutoScreenState createState() => _AttendanceAutoScreenState();
}
class _AttendanceAutoScreenState extends State<AttendanceAutoScreen> {
  CalendarController controller=CalendarController();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromRGBO(255, 193, 79, 1) ,
        elevation: 0.0,
        titleSpacing: 20,
        leading: IconButton(
          icon:Icon(Icons.arrow_back_ios),
          color: Color.fromRGBO(22, 29, 111, 1),
          onPressed: ()
          {
            navigateTo(context, AttendanceHomeScreen());
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Auto Attendance',
              style: TextStyle(
                color:Color.fromRGBO(22, 29, 111, 1),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions:
        [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
                Icons.notifications_active_rounded,
              color: Color.fromRGBO(22, 29, 111, 1),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children:
          [
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 193, 79,1),
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(50),
                  bottomEnd: Radius.circular(50),
                ),
              ),
            ),
            Column(
              children:
              [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children:
                  [
                    Center(
                      child: Container(
                        height: 170,
                        width:300,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(22, 29, 111, 1),
                          borderRadius: BorderRadiusDirectional.circular(15),
                        ),
                      ),
                    ),
                    Column(
                      children:
                      [
                        Text(
                          'Operating System',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Lecture at Room 2',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Text(
                              'Tue,31 May,',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '12:00 PM(1h 30m)',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                   Padding(
                       padding: const EdgeInsets.all(20),
                     child: TableCalendar(
                       calendarController: controller,
                     ),
                   ),
                SizedBox(
                  height: 20,
                ),
                defaultButton(
                  function:()
                {
                  navigateTo(context,AutoAttendanceDoneScreen());
                },
                  radius: 20,
                  width: 200,
                  text: 'Attendance',
                  isUpperCase: true,
                  background: Color.fromRGBO(22, 29, 111, 1),
                ),

     ]
            )
          ]
        ),
      ),
    );
  }
}
//كود لبنيتا
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_project/modules/Student_Attendance/Home/Attendance_Home_Screen.dart';
// import 'package:flutter_project/shared/components/componants.dart';
// import 'package:table_calendar/table_calendar.dart';
//
// class AutoAttendanceScreen extends StatefulWidget {
//   @override
//   _AutoAttendanceScreenState createState() => _AutoAttendanceScreenState();
// }
//
// class _AutoAttendanceScreenState extends State<AutoAttendanceScreen> {
//   CalendarController controller = CalendarController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(255, 193, 79, 1),
//         elevation: 0.0,
//         titleSpacing: 20,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios),
//           color: Color.fromRGBO(22, 29, 111, 1),
//           onPressed: () {
//             navigateTo(context, AttendanceHomeScreen());
//           },
//         ),
//         title: Text(
//           'Auto Attendance',
//           style: TextStyle(
//             color: Color.fromRGBO(22, 29, 111, 1),
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: Stack(
//         children: [
//           Container(
//             height: 50,
//             decoration: BoxDecoration(
//               color: Color.fromRGBO(255, 193, 79, 1),
//               borderRadius: BorderRadiusDirectional.only(
//                 bottomStart: Radius.circular(50),
//                 bottomEnd: Radius.circular(50),
//               ),
//             ),
//           ),
//           Column(
//             children: [
//               Stack(
//                 alignment: AlignmentDirectional.center,
//                 children: [
//                   Center(
//                     child: Container(
//                       height: 200,
//                       width: 300,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(22, 29, 111, 1),
//                         borderRadius: BorderRadiusDirectional.circular(15),
//                       ),
//                     ),
//                   ),
//                   Column(
//                     children: [
//                       Text(
//                         'Operating System',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w300,
//                           color: Colors.white,
//                         ),
//                       ),
//                       Text(
//                         'Lecture at Room 2',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w300,
//                           color: Colors.white,
//                         ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             'Tue,31 May,',
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w300,
//                               color: Colors.white,
//                             ),
//                           ),
//                           Text(
//                             '12:00 PM(1h 30m)',
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w300,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: TableCalendar(
//                   calendarController: controller,
//                   rowHeight: 50,
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               defaultButton(
//                 function: ()
//                 {
//                   navigateTo(context, AttendanceHomeScreen());
//                 },
//                 radius: 20,
//                 width: 200,
//                 text: 'Attendance',
//                 isUpperCase: true,
//                 background: Color.fromRGBO(22, 29, 111, 1),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
