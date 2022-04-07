import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {

  final int result;
  final bool  isMale;
  final int   age;

  BmiResultScreen({

    @required this.result,
    @required this.age,
   @required  this.isMale,

});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BmiResult',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender=${isMale ? 'Male': "female"}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight:FontWeight.bold,
              ),
            ),
            Text(
              'Result=$result',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight:FontWeight.bold,
              ),
            ),
            Text(
              'age=$age',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight:FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

    );
  }
}