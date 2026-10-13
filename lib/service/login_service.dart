import 'package:di_storage/main.dart';
import 'package:di_storage/model/user_model.dart';
import 'package:dio/dio.dart';

// ? username = johnd
// ? password = m38rmF$
Future<bool> logIn(UserModel user) async {
  try {
    String url = "http://fakestoreapi.com/auth/login";
    Dio dio = Dio();
    Response response = await dio.post(url, data: user.toMap());
    print(response.data);
    prefs.setString('token', response.data['token']);

    return true;
  } catch (e) {
    return false;
  }
}
