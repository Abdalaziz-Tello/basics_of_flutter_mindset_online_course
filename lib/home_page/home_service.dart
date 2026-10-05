

import 'package:dio/dio.dart';
import 'package:intro_to_restfulapi/home_page/home_model.dart';


Future<Article> fetchData()async{

Dio dio = Dio();
  final response = await dio.get('http://jsonplaceholder.typicode.com/posts/3');
  Article article = Article.fromMap(response.data);
 return article;
  
}