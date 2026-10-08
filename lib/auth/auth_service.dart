import 'package:dio/dio.dart';
import 'package:intro_to_restfulapi/auth/auth_model.dart';


// ! WE DON'T DO THAT HERE !!
String token = "";

logIn({required AuthModel authModel}) async {
  Dio dio = Dio();


  final response = await dio.post(
    'https://dummyjson.com/auth/login',
    data: authModel.toMap(),
  );


  print(response.data['accessToken']);
  token = response.data['accessToken'];
}
