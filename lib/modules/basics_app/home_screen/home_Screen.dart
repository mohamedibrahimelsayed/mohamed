  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
  {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(

        leading: Icon(
          Icons.menu,

        ),
        backgroundColor:Colors.red,


        title: Text(
          'first App',
        ),

        actions: [

          IconButton(onPressed:()
          {
            print("onNotification");

          },

              icon: Icon(
                Icons.notification_important,
                       ),
          ),


          IconButton(onPressed:()

          {
            print("onNotification");

          },
              icon:Icon(
                Icons.search,
                      ),
          ),

        ],

      ),

      body: Column(
        children: [
           Padding(
              padding: const EdgeInsets.all(50.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(20.0),
                  ),

                 clipBehavior:Clip.antiAliasWithSaveLayer ,
                 child: Stack(
                    alignment: Alignment.bottomCenter,

                    children: [
                      Image(
                          image: NetworkImage
                            (
                            'https://wikimisr.com/wp-content/uploads/2021/03/hdoaa.com-%D8%B5%D9%88%D8%B1-%D9%88%D8%B1%D8%AF-28.jpg',

                          ) ,
                      height:  200 ,
                          width:200,
                          fit:BoxFit.cover,

                        ),
                      Container(

                        color: Colors.red.withOpacity(0.9),
                        width: 200.0,
                        padding: EdgeInsets.symmetric(
                          vertical:10.0,


                        ),
                        child: Text(
                            'Flower',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,


                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        ],

      ),

    );
  }



  }