import 'dart:math';
import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/layout/shop_app/cubit/cubit.dart';
import 'package:flutter_project/modules/news_app/web_view/web_view_screen.dart';
import 'package:flutter_project/shared/cubit/cubit.dart';
import 'package:flutter_project/shared/styles/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
// Widget defaultButton ({
//    double width=double.infinity,
//    Color  background=Colors.blue,
//   bool isUpperCase= true,
//   double radius=0.0,
//  @required  Function function,
//   @required  String  text,
// })  =>
//   Container(
//   width:width,
//   height: 40.0,
//
//   child: MaterialButton(
//     onPressed: function,
//     child:Text(
//         isUpperCase? text.toUpperCase() :text,
//       style: TextStyle(
//         fontSize: 20.0,
//         color: Colors.white,
//       ),
//     ),
//   ),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(
//           radius,
//       ),
//       color: background,
//    ),
// );
//
// Widget defaultFormField({
//   @required TextEditingController controller,
//   @required TextInputType type,
//    Function  onSubmit,
//   Function onChanged,
//   Function onTap,
//   bool isPassword=false,
//   @required String Function (String value)validate,
//   @required  String label,
//   @required  IconData prefix,
//   IconData suffix,
//   Function suffixPressed,
//   bool isClickable=true,
//
// })=>TextFormField(
// controller: controller,
// keyboardType:type,
//  enabled:isClickable ,
//  obscureText: isPassword,
// onFieldSubmitted: onSubmit,
// onChanged: onChanged,
// validator:validate ,
// onTap: onTap,
// decoration: InputDecoration(
// labelText: label,
// border:OutlineInputBorder(),
// prefixIcon: Icon(
//     prefix,
// ),
// suffixIcon: suffix!= null?
// IconButton(
//   onPressed:() {
//     suffixPressed();
//   },
//   icon: Icon(
//     suffix,
//     ),
// ) :null,
// ),
//
var f=e;
Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  double radius = 25.0 ,
  bool isUpperCase = true,
  @required Function function,
  @required String text,
})=> Container(
  width: width,
  height:40,
  child: MaterialButton(
    onPressed: function,
    child: Text(
      isUpperCase?  text.toUpperCase()  : text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: background,
  ),
);

Widget defaultTextButton({
  @required Function function,
  @required String text,
})=> TextButton(onPressed: function,
  child: Text(text.toUpperCase(),),
);

Widget defaultFormField({
  @required TextEditingController controller,
  @required TextInputType type,
  Function onSubmit,
  Function onChange,
  Function onTap,
  bool isPassword = false,
  @required Function validate,
  @required String label,
  @required IconData prefix,
  IconData suffix,
  Function suffixPressed,
  bool isClickable = true,

}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      decoration:
      InputDecoration(
        labelStyle:TextStyle(
          color: Colors.black,
        ) ,
        filled: true,
        fillColor: Colors.white,
        labelText: label,
        prefixIcon:
        Icon(
          prefix,
          color: Colors.black,
        ),
        suffixIcon: suffix != null
            ? IconButton(
              onPressed: suffixPressed,
              icon: Icon(
                suffix,
                color: Colors.black,
              ),
        )
            : null,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.white,
        ),
      ),
      )
      );
Widget buildTaskItem( Map model,context)=>Dismissible(
  key:Key(model['id'].toString()) ,
  child:   Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 40.0,
          child: Text(

            '${model['time']}',
          ),
        ),

        SizedBox(

          width: 20.0,
        ),
          Expanded(
          child: Column(
            mainAxisSize:MainAxisSize.min,
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [

              Text(
                '${model['title']}',
                style:TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ) ,
              ),

              Text(
                '${model['date']}',
                style:TextStyle(
                  color: Colors.grey,
                ) ,
              ),
            ],
          ),

        ),

        SizedBox(

          width: 20.0,

        ),

        IconButton(

            onPressed:()

            {

              AppCubit.get(context).updateData(

                status:'done',

                id: model['id'],



              );

            },

            icon: Icon(

              Icons.check_box,

              color: Colors.green,

            )

        ),

        IconButton(

            onPressed:()
            {
              AppCubit.get(context).updateData(

                  status:'Archive',
                  id: model['id']
              );
              },
            icon: Icon(
              Icons.archive,
              color: Colors.red,

            )
        ),
      ],
    ),

  ),
  onDismissed: (direction)
  {
    AppCubit.get(context).deleteData(id:model['id']);

  },
);


Widget tasksBuilder({
  @required List<Map> tasks,
}) => ConditionalBuilder(
  condition: tasks.length > 0,
  builder: (context) => ListView.separated(
    itemBuilder: (context, index)
    {
      return buildTaskItem(tasks[index], context);
    },
    separatorBuilder: (context, index) => myDivider(),
    itemCount: tasks.length,
  ),
  fallback: (context) => Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.menu,
          size: 100.0,
          color: Colors.grey,
        ),
        Text(
          'No Tasks Yet, Please Add Some Tasks',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  ),
);

Widget myDivider() => Padding(
  padding: const EdgeInsetsDirectional.only(
    start: 20.0,
  ),
  child: Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey[300],
  ),
);

Widget buildArticleItem(article,context) => InkWell(
  onTap: ()
  {
    navigateTo(context, WebViewScreen(article['url']),);

  },
  child:   Padding(

    padding: const EdgeInsets.all(20.0),

    child: Row(

      children: [

        Container(

          width: 120.0,

          height: 120.0,

          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10.0,),

            image: DecorationImage(

              image: NetworkImage('${article['urlToImage']}'),

              fit: BoxFit.cover,

            ),

          ),

        ),

        SizedBox(

          width: 20.0,

        ),

        Expanded(

          child: Container(

            height: 120.0,

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              mainAxisAlignment: MainAxisAlignment.start,

              children:
              [
                Expanded(
                  child: Text(
                    '${article['title']}',
                    style:Theme.of(context).textTheme.bodyText1,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  '${article['publishedAt']}',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(

          width: 15.0,

        ),

      ],

    ),

  ),
);

Widget articleBuilder(list,context,{isSearch=false}) => ConditionalBuilder(
  condition: list.length > 0,
  builder: (context) =>
      ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => buildArticleItem(list[index],context),
        separatorBuilder: (context, index) => myDivider(),
        itemCount: 10,),
  fallback: (context) => isSearch ? Container() :Center(child: CircularProgressIndicator()),
);

void navigateTo(context ,widget)=> Navigator.push(
   context ,
  MaterialPageRoute(
    builder:(context)=>widget,
  ),
);
void navigateAndFinish(context ,widget)=> Navigator.pushAndRemoveUntil(
     context ,
    MaterialPageRoute(
    builder:(context)=>widget,
  ),
    (route)
    {
      return false;
    },
);


void showToast({
  @required String text,
  @required ToastStates state,

})=> Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 5,
    backgroundColor:chooseToastColor(state),
    textColor: Colors.white,
    fontSize: 16.0
);

//enum
//دي بختار كذه اختيار من حاجه عندي لو تم هيجيب لون اخضر لو غلط لون اصفر لو ايرور يبقا لون احمر

enum ToastStates{SUCCESS,ERROR,WARNING}

Color chooseToastColor(ToastStates state)
{
  Color color;
  switch(state)
  {
    case ToastStates.SUCCESS:
      color= Colors.green;
      break;
    case ToastStates.ERROR:
      color =Colors.red;
      break;
    case ToastStates.WARNING:
      color= Colors.yellow;
      break;
  }
  return color;
}
Widget buildListProduct(
    model ,
    context,
    {bool isOldPrice=true,}
    )
=>Padding(
  padding: const EdgeInsets.all(20.0),
  child: Container(
    height: 120.0,

    child: Row(
      children:
      [
        Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Image(
              image:NetworkImage(model.image),
              width: 120.0,
              height: 120.0,
            ),
            if(model.discount!=0 && isOldPrice)
              Container(
                color: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 5.0,),
                child: Text(
                  'DISCOUNT',
                  style: TextStyle(
                    fontSize: 8.0,
                    color: Colors.white,
                  ),
                ),
              )
          ],
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,


            children: [
              Text(
                model.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14.0,
                  height: 1.3,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    //علشان price مش string و حطيط ال round() علشان يحولو ل int
                    model.price.toString(),
                    style: TextStyle(
                      fontSize: 12.0,
                      color: defaultColor,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  if(model.discount!=0 && isOldPrice)
                    Text(
                      //علشان price مش string و حطيط ال round() علشان يحولو ل int
                      model.oldPrice.toString(),
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  Spacer(),
                  IconButton(
                    onPressed:()
                    {
                      ShopCubit.get(context).changeFavorites(model.id);
                    },
                    icon:CircleAvatar(
                      radius: 15.0,
                      backgroundColor:
                      ShopCubit.get(context).favorites[model.id]
                          ?defaultColor
                          :Colors.grey,
                      child: Icon(
                        Icons.favorite_border,
                        size: 15.0,
                        color: Colors.white,
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
);

