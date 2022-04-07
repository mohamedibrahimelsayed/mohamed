import 'package:flutter/material.dart';
import 'package:flutter_project/modules/Student_Attendance/Auto/Attendance_Auto_Screen.dart';
import 'package:flutter_project/modules/Student_Attendance/Modify/Modify_Attendance_Screen.dart';
import 'package:flutter_project/modules/Student_Attendance/Report/Attendance_Report_Screen.dart';
import 'package:flutter_project/modules/Student_Attendance/UserProfile/User_Profile_Screen.dart';
import 'package:flutter_project/shared/components/componants.dart';

class AttendanceHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(22, 29, 111, 1),
        elevation: 0.0,
        titleSpacing: 20,
        leading: IconButton(
        icon:Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: ()
          {
            navigateTo(context, AttendanceAutoScreen());
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dr.Abdellatief',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
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
        actions:
        [
          IconButton(
              onPressed: ()
              {
                navigateTo(context, UserProfileScreen());
              },
            icon:
            CircleAvatar(
              radius: 30,
              backgroundImage:
              NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHPzEJprm2H7C--vIa6fa1zz_QQZOb-CBpnQ&usqp=CAU',
              ),
            ),
              ),

          // Padding(
          //   padding: const EdgeInsets.symmetric(
          //     horizontal: 10,
          //   ),
          //   child: CircleAvatar(
          //
          //     radius: 30,
          //     backgroundImage:
          //     NetworkImage(
          //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHPzEJprm2H7C--vIa6fa1zz_QQZOb-CBpnQ&usqp=CAU',
          //     ),
          //   ),
          // ),
        ],
      ),
      body: Stack(
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
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select Your Course',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 150,
                        child: ListView.separated(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 193, 79, 1) ,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Container(
                                width: 200,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Operating System',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Color.fromRGBO(22, 29, 111, 1),
                                          fontSize: 20,
                                        ),
                                      ),
                                      // SizedBox(
                                      //   height: 5,
                                      // ),
                                      Text(
                                        '3Cs',
                                        style: TextStyle(
                                          color: Color.fromRGBO(22, 29, 111, 1),
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),

                                ),
                              ),
                            ],
                          ),
                          separatorBuilder: (context, index) => SizedBox(
                            width: 25,
                          ),
                          itemCount: 5,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Our Features',
                  style: TextStyle(
                    color: Color.fromRGBO(22, 29, 111, 1),
                    fontSize: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    'https://finapayment.com/wp-content/uploads/2020/08/shutterstock_618376100spider.jpg',
                                  ),
                                ),
                                TextButton(
                                  onPressed: ()
                                  {
                                    navigateTo(context, AttendanceAutoScreen());

                                  },
                                  child: Text(
                                    'Auto Attendance',
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                // overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                    fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(22, 29, 111, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWPR_PwetRjgUPbDNVcOIY7XbLdlxQIWT-FQ&usqp=CAU',
                                  ),
                                ),
                                TextButton(
                                  onPressed: ()
                                  {
                                    navigateTo(context, AttendanceReportScreen());

                                  },
                                  child: Text(
                                    'Generate Report',
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
// overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(22, 29, 111, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    width: 200,
                    height: 150,
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          height: 150,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Image(
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://media.istockphoto.com/vectors/attendance-concept-businessman-holding-document-vector-flat-design-vector-id1167651240?k=20&m=1167651240&s=612x612&w=0&h=3jN8v2aA_7xIuPUiPZM0V-JLacPowcb32wCfq1ckJmg=',
                              ),
                            ),
                            TextButton(
                              onPressed: ()
                              {
                                navigateTo(context, ModifyAttendanceScreen());

                              },
                              child: Text(
                                'Modify Attendance',
                                textAlign: TextAlign.center,
                                maxLines: 1,
// overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(22, 29, 111, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
