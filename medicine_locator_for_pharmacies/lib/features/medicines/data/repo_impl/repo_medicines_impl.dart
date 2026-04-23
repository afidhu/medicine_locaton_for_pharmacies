

import 'package:medicine_locator_for_pharmacies/features/medicines/domain/entities/medicine_entity.dart';
import 'package:medicine_locator_for_pharmacies/features/medicines/domain/repositories/repo_medicines.dart';

import '../data_sources/remotes/medicine_data_sources.dart';
import '../models/medicines_model.dart';

class RepoMedicinesImpl  extends RepoMedicines{

  final MedicineDataSources medicineDataSources;
  RepoMedicinesImpl({required this.medicineDataSources});


  @override
  Future<MedicinesEntity> addMedicines(MedicinesEntity medicine) async{
    final response = await medicineDataSources.addMedicine(medicine);
    if(response.statusCode ==2001 || response.statusCode ==200){
      final dataJson = response.data;
      return MedicinesModel.fromJson(dataJson);
    }else{
      throw Exception('Failed to add medicine');
    }
  }

  @override
  Future<List<MedicinesEntity>> getMedicines()  async{
    final response = await medicineDataSources.getAllMedicine();
    if(response.statusCode ==200){
      final dataJson = response.data;

      return dataJson.map((json)=>MedicinesModel.fromJson(json)).toList();
    }else{
      throw Exception('Failed to fetch medicines');
    }
  }

}