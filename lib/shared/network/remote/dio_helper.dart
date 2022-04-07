import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
class DioHelper {
  static Dio dio;
  static init()
  {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://student.valuxapps.com/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }
  static Future<Response> getData({
    @required String url,
    Map<String,dynamic> query,
    String lang = 'en',
    String token,
  }) async
  {
    dio.options.headers =
    {
      'Content-Type':'application/json',
      'lang' : lang ,
      'Authorization' : token??'',
    };
    return await dio.get(
      url,
      queryParameters: query??null,
    );
  }
  // static Future<Response> postData({
  //   @required String url,
  //   Map<String, dynamic> query,
  //   @required Map<String, dynamic> data,
  //   String lang = 'ar',
  //   String token,
  // }) async
  // {
  //   dio.options.headers =
  //   {
  //     'Content-Typr':'application/jason',
  //     'lang' : lang ,
  //     'Authorization' : token,
  //   };
  //   return await dio.post(
  //     url,
  //     queryParameters: query,
  //     data: data,
  //   );
  // }
  static Future<Response> postData(
      {
        @required String url,
        Map<String,dynamic> query,
        @required Map<String,dynamic> data,
        String lang = 'en',
        String token,
      }
      )async
  {
    // henaa b3ml creat l header b eydyy w bykoun fo2 el header ely 3amlenu fl intial
    dio.options.headers= {
      'Content-Type':'application/json',
      'lang':lang,
      'Authorization':token??'',
    };
    // hna hn3t url ely hwa wl path wl query msh htkoun required hwa hn7outha 3shan e7tmal n7tghaa
    // w hnb3t data akeed 3shan hnpost
    return dio.post(
      url ,
      queryParameters: query,
      data:data,
    );
  }

  static Future<Response> putData(
      {
        @required String url,
        Map<String,dynamic> query,
        @required Map<String,dynamic> data,
        String lang = 'en',
        String token,
      }
      )async
  {
    // henaa b3ml creat l header b eydyy w bykoun fo2 el header ely 3amlenu fl intial
    dio.options.headers= {
      'Content-Type':'application/json',
      'lang':lang,
      'Authorization':token??'',
    };
    // hna hn3t url ely hwa wl path wl query msh htkoun required hwa hn7outha 3shan e7tmal n7tghaa
    // w hnb3t data akeed 3shan hnpost
    return  dio.put(
      url ,
      queryParameters: query,
      data:data,
    );
  }
}