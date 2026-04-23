
import 'package:dio/dio.dart';

class DioClient{


  final dio = Dio( BaseOptions(
    baseUrl: 'https://api.pub.dev',
    connectTimeout: Duration(seconds: 5),
    receiveTimeout: Duration(seconds: 3),
  ));

}