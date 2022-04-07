import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/shared/components/componants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  var emailController =TextEditingController();
  var passwordController =TextEditingController();
  var formKey=GlobalKey<FormState>();
  bool isPassword =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:Center(
          child: SingleChildScrollView(
            child: Form(
              key:formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text(
                      'Login',
                      style:TextStyle(
                        fontSize: 40.0,
                        fontWeight:FontWeight.bold,

                      ) ,
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(

                      controller: emailController,
                     keyboardType: TextInputType.emailAddress,
                     onFieldSubmitted: (String value)
                     {
                       print(value);
                     },
                      onChanged: (String value)
                      {
                        print(value);
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                          labelText: 'email address',
                          prefixIcon:Icon(
                            Icons.email,
                          ),

                      ),
                    validator:(String value)
                      {
                        if(value.isEmpty)
                        {
                          return'email must not be empty ';
                        }
                        return null;
                      },
                    ),

                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      onFieldSubmitted: (String value)
                      {
                        print(value);
                      },
                      onChanged: (String value)
                      {
                        print(value);
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'password',
                        prefix: Icon(
                          Icons.lock,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                        )
                      ),

                      validator:(String value)
                      {
                        if(value.isEmpty)
                        {
                          return'password must not be empty ';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    defaultButton(
                      text: 'login',
                      function: ()
                      {
                        if(formKey.currentState.validate())
                        {
                          print(emailController.text);
                          print(passwordController.text);
                        }
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center ,
                        children:[
                          Text
                            (
                            'Don\t  have an account ?',
                        ),
                          TextButton(onPressed:(){},
                            child: Text(
                            ' Register now',
                          ),),
                        ]
                    ),
                  ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}