import 'package:dio/dio.dart';

import '../../../../../core/utils/network/api_provider.dart';
import '../../../../../core/utils/network/dio_client.dart';

class MedicineDataSources {

 final dioClient =DioClient();
 // MedicineDataSources(this.dioClient);

  Future<Response> getAllMedicine() async {
    try{
      return await dioClient.dio.get(ApiProvider.allMedicines);
    } catch(e){
      return Future.error(e);
    }
  }


  Future<Response> addMedicine( medicine) async {
    try{
      return await dioClient.dio.post(ApiProvider.addMedicines,data: medicine.toJson());
    } catch(e){
      return Future.error(e);
    }
  }
}
