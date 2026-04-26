import 'package:dio/dio.dart';

import '../../../../../core/utils/network/api_provider.dart';
import '../../../../../core/utils/network/dio_client.dart';

class PharmacyRemoteDataSource{

  final dioClient =DioClient();

  // PharmacyRemoteDataSource(this.dioClient);

  Future<Response> getPharmacies(){
    try{
      return dioClient.dio.get(ApiProvider.allPharmacy);
    } catch(e){
      rethrow;
    }
  }


    Future<Response> addPharmacies(pharm){
    try{
      return dioClient.dio.post(ApiProvider.addPharmacy,data: pharm.toJson());
    } catch(e){
      rethrow;
    }
  }


  Future<Response> getMedicineForPharmacies(pharm){
    try{
      return dioClient.dio.get(ApiProvider.getMedicineForPharmacy);
    } catch(e){
      rethrow;
    }
  }

  Future<Response> addMedicineForPharmacies(pharmMedicine){
    try{
      return dioClient.dio.post(ApiProvider.addMedicineForPharmacy,data: pharmMedicine.toJson());
    } catch(e){
      rethrow;
    }
  }

}


