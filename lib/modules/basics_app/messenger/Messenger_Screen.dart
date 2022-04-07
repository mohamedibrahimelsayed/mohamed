   import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {

     @override
     Widget build(BuildContext context) {
       return Scaffold(
         backgroundColor: Colors.white,
         appBar:AppBar(
           titleSpacing: 20.0,
           backgroundColor: Colors.white,
           elevation: 0.0,
           title: Row(
             children: [
               CircleAvatar(
                   radius:25.0,
                 backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1438658528030478336/JNMYI3LK_400x400.jpg'),

               ),
               SizedBox(
                 width: 15.0,
               ),
               Text(
                 'Chats',
                 style: TextStyle(
                   color: Colors.black,
                 ),
               ),

             ],
           ),
           actions: [
             IconButton(onPressed:(){}, icon:CircleAvatar(
               backgroundColor: Colors.blue,
               radius: 15.0,
               child: Icon (
               Icons.camera_alt,
                 color: Colors.white,
                 size: 16.0,
               ),
             ),),
             IconButton(onPressed:(){}, icon:CircleAvatar(
               backgroundColor: Colors.blue,
               radius: 15.0,
               child: Icon (
                 Icons.edit,
                 color: Colors.white,
                 size: 16.0,
               ),
             ),),
           ],



         ) ,
         body: Padding(
           padding: const EdgeInsets.all(20.0),
           child:SingleChildScrollView(
             child: Column(
               crossAxisAlignment:CrossAxisAlignment.start ,
                 children:[
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5.0,),
                         color: Colors.grey[300],

                       ),
                       padding:EdgeInsets.all(5.0) ,


                       child: Row(
                         children: [

                           Icon(
                                 Icons.search,
                           ),
                           SizedBox(
                             width: 15.0,
                           ),
                           Text(
                             'Search',
                           ),
                         ],
                       ),
                     ),
                   SizedBox(
                     height: 20.0,
                   ),
                   Container(
                     height: 120.0,
                     child: ListView.separated(
                       shrinkWrap: true,
                       scrollDirection:Axis.horizontal,
                         itemBuilder:(context, index)=>buildStoryItem(),
                       separatorBuilder:(context, index)=>SizedBox(
                         width: 20.0,
                       ) ,
                       itemCount: 8,

                         ),
                   ),
                   SizedBox(
                     height:20.0,
                   ),
                     ListView.separated(
                       shrinkWrap: true,
                       physics:NeverScrollableScrollPhysics() ,

                       itemBuilder:(context , index )=>buildChatItem(),
                          separatorBuilder:(context , index )=>SizedBox(
                           height: 20.0,) ,
                         itemCount: 8,),

                 ],
             ),
           ),
         ),
       );
     }

     Widget buildChatItem() =>Row(
       children: [
         Stack(
           alignment:AlignmentDirectional.bottomEnd ,
           children: [
             CircleAvatar(
               radius:30.0,
               backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/AbdelFattah_Elsisi.jpg/800px-AbdelFattah_Elsisi.jpg'),

             ),
             CircleAvatar(
               radius: 10.0,
               backgroundColor: Colors.white,

             ),
             Padding(
               padding: const EdgeInsetsDirectional.only(
                 bottom: 3.0,
                 end: 3.0,
               ),
               child: CircleAvatar(
                 radius: 8.0,
                 backgroundColor: Colors.green,

               ),
             ),
           ],
         ),
         SizedBox(
           height: 30.0,
         ),
         Expanded(
           child: Column(
             crossAxisAlignment:CrossAxisAlignment.start ,
             children: [
               Text(
                 'AbdelFattah Elsisi - عبد الفتاح السيسي',
                 style: TextStyle(
                   fontSize: 16.0,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               SizedBox(
                 height: 5.0,
               ),
               Row(
                 children: [
                   Expanded(
                     child: Text(
                       'where are you brother?',
                       maxLines: 2,
                       overflow:TextOverflow.ellipsis ,
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal:10.0, ),
                     child: Container(
                       width:9.0 ,
                       height: 9.0,
                       decoration:BoxDecoration(
                         color: Colors.blueAccent,
                         shape: BoxShape.circle,
                       ) ,
                     ),
                   ),
                   Text(
                     '11.00 am',
                   ),

                 ],
               ),
             ],
           ),
         ),

       ],
     );
     Widget  buildStoryItem() =>Container(
       width: 60.0,
       child: Column(
         children: [
           Stack(
             alignment:AlignmentDirectional.bottomEnd ,
             children: [
               CircleAvatar(
                 radius:30.0,
                 backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/AbdelFattah_Elsisi.jpg/800px-AbdelFattah_Elsisi.jpg'),

               ),
               CircleAvatar(
                 radius: 10.0,
                 backgroundColor: Colors.white,

               ),
               Padding(
                 padding: const EdgeInsetsDirectional.only(
                   bottom: 3.0,
                   end: 3.0,
                 ),
                 child: CircleAvatar(
                   radius: 8.0,
                   backgroundColor: Colors.green,

                 ),
               ),
             ],
           ),
           SizedBox(height: 6.0),
           Text(
             'AbdelFattah Elsisi - عبد الفتاح السيسي',

             maxLines: 2,
             overflow:TextOverflow.ellipsis ,
             style: TextStyle(
               fontSize: 15.0,
             ),
           ),


         ],
       ),
     );



   }








