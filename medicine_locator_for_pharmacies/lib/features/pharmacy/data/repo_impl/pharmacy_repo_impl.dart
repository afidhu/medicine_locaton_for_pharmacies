

import 'dart:convert';

import 'package:medicine_locator_for_pharmacies/features/pharmacy/data/models/pharmacy_model.dart';

import 'package:medicine_locator_for_pharmacies/features/pharmacy/domain/entities/pharmcy_entities.dart';

import '../../domain/repositories/pharmacy_repos.dart';
import '../data_sources/remote_source/pharmacy_remote.dart';
import '../models/medicineForPharmacyModel.dart';

class PharmacyRepoImpl implements PharmacyRepos {
  final PharmacyRemoteDataSource pharmacyRemoteDataSource;

  PharmacyRepoImpl(this.pharmacyRemoteDataSource);
  @override
  Future<PharmacyEntity> addAllPharmacy( PharmacyEntity pharmacy) async{

    try {
      final response = await pharmacyRemoteDataSource.addPharmacies(pharmacy);
      if(response.statusCode ==200 || response.statusCode==201){
        final pharm = response.data;

        return PharmacyModel.fromJson(pharm);
      }
      return Future.error('add pharmacy failed');
    } catch(e){
      throw Exception('Internal server error occured at : $e');
    }
  }

  @override
  Future<List<PharmacyEntity>> getAllPharmacy()  async{
    try{
      final response = await pharmacyRemoteDataSource.getPharmacies();
      if(response.statusCode ==200){
        List<dynamic> pharmJson = response.data;

        return pharmJson.map((e)=>PharmacyModel.fromJson(e)).toList();
      }
      return Future.error('add pharmacy failed');
    } catch(e){
      throw Exception('Internal server error occured at : $e');
    }
  }

  @override
  Future<MedicineForPharmacyEntity> addMedicineForPharmacy(MedicineForPharmacyEntity medicinePharmacy)  async{
    try {
      final response = await pharmacyRemoteDataSource.addMedicineForPharmacies(medicinePharmacy);
      if(response.statusCode ==200 || response.statusCode==201){
        final pharm = response.data;

        return MedicineForPharmacyModel.fromJson(pharm);
      }
      return Future.error('add MedicineForPharmacyModel failed');
    } catch(e){
      throw Exception('Internal server error occured at : $e');
    }
  }

  @override
  Future<List<MedicineForPharmacyEntity>> getMedicineForPharmacy()  async{
    try{
      final response = await pharmacyRemoteDataSource.getPharmacies();
      if(response.statusCode ==200){
        List<dynamic> pharmJson = response.data;

        return pharmJson.map((e)=>MedicineForPharmacyModel.fromJson(e)).toList();
      }
      return Future.error('add MedicineForPharmacyModel failed');
    } catch(e){
      throw Exception('Internal server error occured at : $e');
    }
  }
}