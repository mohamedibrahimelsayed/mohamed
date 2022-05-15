import 'package:flutter/material.dart';
import 'package:flutter_project/shared/components/componants.dart';

class StudentScreen extends StatefulWidget {
  @override
  _StudentScreenState createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var Fname = TextEditingController();
  var Lname = TextEditingController();
  var phone = TextEditingController();
  var address = TextEditingController();
  var year = TextEditingController();
  // String _selectedGender = 'male';
  String dropdownvalue = 'first year';
  var items =  ['first year','Second Year','third year','Fourth year',];
  String dropdownvalues = 'Male';
  var item =  ['Male','Female',];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: defaultFormField(
                // decoration:
                // InputDecoration(
                //     enabledBorder:OutlineInputBorder(
                //         borderSide:BorderSide(
                //         ),
                //     ),
                // ),
                controller: Fname,
                type: TextInputType.name,
                validate: (String value) {
                  if (value.isEmpty) {
                    return 'please enter your first name';
                  }
                },
                label: 'First Name',
                prefix: Icons.drive_file_rename_outline,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: defaultFormField(
                controller: Lname,
                type: TextInputType.name,
                validate: (String value) {
                  if (value.isEmpty) {
                    return 'please enter your list name';
                  }
                },
                label: 'Last Name',
                prefix: Icons.drive_file_rename_outline,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: defaultFormField(
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
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: defaultFormField(
                controller: phone,
                type: TextInputType.number,
                validate: (String value) {
                  if (value.isEmpty) {
                    return 'please enter your phone';
                  }
                },
                label: 'Phone',
                prefix: Icons.phone,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: defaultFormField(
                controller: address,
                type: TextInputType.visiblePassword,
                validate: (String value) {
                  if (value.isEmpty) {
                    return 'please enter your address';
                  }
                },
                label: 'address',
                prefix: Icons.home,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: defaultFormField(
                controller: year,
                type: TextInputType.number,
                validate: (String value) {
                  if (value.isEmpty) {
                    return 'please enter your Age';
                  }
                },
                label: 'Age',
                prefix: Icons.date_range,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text('Academic Year :',
                    style:
                    TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    children: [
                      DropdownButton(
                        value: dropdownvalue,
                        icon: Icon(Icons.keyboard_arrow_down),
                        items:items.map((String items) {
                          return DropdownMenuItem(
                              value: items,
                              child: Text(items)
                          );
                        }
                        ).toList(),
                        onChanged: (String newValue){
                          setState(() {
                            dropdownvalue = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text('Gender :',
                    style:
                    TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      DropdownButton(
                        value: dropdownvalues,
                        icon: Icon(
                            Icons.keyboard_arrow_down),
                        items:item.map((String items) {
                          return DropdownMenuItem(
                              value: items,
                              child: Text(items)
                          );
                        }
                        ).toList(),
                        onChanged: (String newValue){
                          setState(() {
                            dropdownvalues = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            defaultButton(
              function: () {
                if (formKey.currentState.validate()) {
                  //navigateTo(context, StudentScreen());
                }
              },
              text: 'Done',
              isUpperCase: true,
              background: Color.fromRGBO(255, 193, 79, 1),
              width: 200,
              radius: 20,
            ),
          ],
        ),

      ),
    );

  }
}
