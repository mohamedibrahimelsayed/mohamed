import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/models/shop_app/login_model.dart';
import 'package:flutter_project/modules/shop_app/login/cubit/states.dart';
import 'package:flutter_project/shared/network/end_points.dart';
import 'package:flutter_project/shared/network/remote/dio_helper.dart';

class ShopLoginCubit extends Cubit<ShopLoginStates>
{
  ShopLoginCubit() : super(ShopLoginInitialState());
  static  ShopLoginCubit get(context)=> BlocProvider.of(context);
  ShopLoginModel loginModel;

  // var emailController = TextEditingController();
  // var passwordController = TextEditingController();
  // void userLogin({
  //   @required String email ,
  //   @required String password,
  // })
  // {
  //   emit(ShopLoginLoadingState());
  //   DioHelper.postData(
  //     url: login,
  //     data: {
  //هنا انا ببعت ال arg  مش الString بتاع parameters

  //       'email':email,
  //       'password':password,
  //     },
  //   ).then((value)
  //   {
  //     print(value.data);
  //     emit(ShopLoginSuccessState());
  //   }).catchError((error)
  //   {
  //     print(error.toString());
  //     emit(ShopLoginErrorState(error.toString()));
  //   });
  //
  // }
  void userLogin (
      {
        @required String password,
        @required String email,

      }
      )
  {
    emit(ShopLoginLoadingState());
    // emit henaa 3shan lessa hyload el dataa w hygyy
    // post.then bydyny value el value dee ely rag3aly mn el api fa a2der astkhmhaa 3shan at2ked aw a3ml check
    DioHelper.postData(
        url: LOGIN,
        data: {
          'email':email,
          'password':password
         }).then((value){
         print(value.data);
         loginModel=ShopLoginModel.fromJson(value.data);
         // 3shan kda ana msh mhtag l constructor aslun 3shan awel ma h3ml data dot hygbly kol haga
      emit(ShopLoginSuccessState(loginModel));
    }).catchError((error){
      emit(ShopLoginErrorState(error));
      print('iam the denger $error');
    });
  }
  IconData suffix=Icons.visibility_outlined;
  bool isPassword=true;

  void changePasswordVisibility()
  {
    isPassword =!isPassword;
    suffix=isPassword?Icons.visibility_outlined: Icons.visibility_off_outlined;
    emit(ShopChangePasswordVisibilityState());
  }
}