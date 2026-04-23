import 'package:dio/dio.dart';

import '../../../../../core/utils/network/dio_client.dart';

class MedicineDataSources {

 final DioClient dioClient;
 MedicineDataSources({required this.dioClient});

  Future<Response> getAllMedicine() async {
    try{
      return await dioClient.dio.get('path');
    } catch(e){
      return Future.error(e);
    }
  }


  Future<Response> addMedicine( medicine) async {
    try{
      return await dioClient.dio.post('path',data: medicine.toJson());
    } catch(e){
      return Future.error(e);
    }
  }
}
