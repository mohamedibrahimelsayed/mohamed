import 'package:flutter/material.dart';
import 'package:flutter_project/shared/components/componants.dart';

class StudentScreen extends StatelessWidget {

  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();
  var Fname = TextEditingController();
  var Lname = TextEditingController();
  var ST_id = TextEditingController();
  var Password = TextEditingController();
  var year = TextEditingController();
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
                    return 'please enter your name';
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
                    return 'please enter your name';
                  }
                },
                label: 'Last Name',
                prefix: Icons.drive_file_rename_outline,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: defaultFormField(
                controller: ST_id,
                type: TextInputType.number,
                validate: (String value) {
                  if (value.isEmpty) {
                    return 'please enter your ID';
                  }
                },
                label: 'Student ID',
                prefix: Icons.app_registration,
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
                controller: Password,
                type: TextInputType.visiblePassword,
                validate: (String value) {
                  if (value.isEmpty) {
                    return 'please enter your password';
                  }
                },
                label: 'Password',
                prefix: Icons.lock_outline,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: defaultFormField(
                controller: year,
                type: TextInputType.number,
                validate: (String value) {
                  if (value.isEmpty) {
                    return 'please enter your year';
                  }
                },
                label: 'Grade',
                prefix: Icons.ac_unit,
              ),
            ),
            defaultButton(
              function: ()
              {
                if(formKey.currentState.validate())
                {
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