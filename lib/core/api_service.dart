import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio ;
  String baseUrl="https://fakestoreapi.com";
  ApiService({required Dio dio }) : _dio = dio;

 Future< List<Map<String,dynamic>>> get(String endpoint)async{
    var response=await this._dio.get("$baseUrl$endpoint");
    return response.data;
  }



}