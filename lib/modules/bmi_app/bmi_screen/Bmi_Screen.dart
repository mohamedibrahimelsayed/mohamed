import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_project/modules/bmi_app/bmi_result/Bmi_result_Screen.dart';

class BmiScreen  extends StatefulWidget {

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale= true;
  double height=120;
  int weight=40;
  int age=20;



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title:  Center(
          child: Text(
              'BMI Calculator',
            style: TextStyle(
              color: Colors.white,
            ),

          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isMale=true;

                        });


                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image:AssetImage
                              (
                              'assets/image/MALE.png',

                            ),
                              width: 90.0,
                              height: 90.0,
                            ),
                            SizedBox(height: 15.0,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold
                              ),

                            ),
                          ],
                        ),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0,),
                         color: isMale?  Colors.blue: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isMale=false;


                        });

                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image:AssetImage
                              (
                              'assets/image/FEMALE.png',

                            ),
                              width: 90.0,
                              height: 90.0,
                            ),
                            SizedBox(height: 15.0,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                              ),

                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: !isMale?  Colors.blue: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],

              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(

                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Text(
                      'HEIGHT',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                ),
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      crossAxisAlignment:CrossAxisAlignment.baseline ,
                      textBaseline: TextBaseline.alphabetic,

                      children: [
                        Text(
                            '${height.round()}',
                          style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold
                          ),
                            ),
                        SizedBox(width: 5.0,),
                        Text(
                          'Cm',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),

                        ),
                      ],
                    ),
                    Slider(
                        value:height,
                        max: 220.0,
                        min: 80.0,

                        onChanged: (value)
                        {
                          setState(() {
                            height=value;
                          });

                          print(value.round());
                        }

                        )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color:Colors.grey ,

                ),
              ),
            ),



          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0),
                           color:Colors.grey ,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'weight',
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: ()
                              {
                                setState(() {
                                  weight--;
                                });

                              } ,
                                mini: true,
                                child: Icon(

                                  Icons.remove,
                                ),



                              ),
                              FloatingActionButton(onPressed: ()
                              {
                                setState(() {
                                  weight++;
                                });

                              } ,
                                mini: true,
                                child: Icon(

                                  Icons.add,
                                ),



                              ),
                            ],
                          ),
                        ],


                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),

                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color:Colors.grey ,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Row(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: ()
                              {
                                setState(() {
                                  age--;
                                });
                              } ,
                                mini: true,
                                child: Icon(

                                  Icons.remove,
                                ),



                              ),
                              FloatingActionButton(onPressed: ()
                              {
                                setState(() {
                                  age++;
                                });

                              } ,
                                mini: true,
                                child: Icon(

                                  Icons.add,
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
          ),
          Container(
            width: double.infinity,
            color: Colors.pinkAccent,
            height: 50.0,
            child: MaterialButton(
              onPressed:()
            {
              double result = weight / pow(height/100,2 );

              print (result.round());
              Navigator.push(
                context ,
                  MaterialPageRoute(
                    builder:(context)=>BmiResultScreen(
                      age: age,
                      isMale: isMale,
                      result:result.round() ,
                    ),
                  ),



              );

            },
              child: Text(
              'Calculate',
                style: TextStyle(
                  color: Colors.white,
                ),
            ),
            ),
          )
        ],
      ),
    );
  }
}
