import 'package:dio/dio.dart';
import 'package:intro_to_restfulapi/auth/auth_service.dart';
import 'package:intro_to_restfulapi/profile/profile_model.dart';


Future<ProfileModel> fetchProfile() async {
  Dio dio = Dio();
  final response = await dio.get(
    'https://dummyjson.com/auth/me',
    options: Options(
    // ! WE DON'T DO THAT HERE !!
      headers: {
        'Authorization': 'Bearer $token', // Pass JWT via Authorization header
      },
    ),
  );
  ProfileModel profileModel = ProfileModel.fromMap(response.data);
  return profileModel;
}
