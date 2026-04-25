import 'package:dio/dio.dart';

import '../../../../../core/utils/network/dio_client.dart';

class PharmacyRemoteDataSource{

  final DioClient dioClient;

  PharmacyRemoteDataSource(this.dioClient);

  Future<Response> getPharmacies(){
    try{
      return dioClient.dio.get('path');
    } catch(e){
      rethrow;
    }
  }
    Future<Response> addPharmacies(pharm){
    try{
      return dioClient.dio.post('path',data: pharm.toJson());
    } catch(e){
      rethrow;
    }
  }


}


