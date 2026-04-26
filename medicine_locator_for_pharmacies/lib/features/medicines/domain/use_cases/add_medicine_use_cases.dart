
import '../entities/medicine_entity.dart';
import '../repositories/repo_medicines.dart';

class AddMedicineUseCases {

  final RepoMedicines _repoMedicines;
  AddMedicineUseCases(this._repoMedicines);

  Future<MedicinesEntity> addMedicines(MedicinesEntity medicine) async{
    return _repoMedicines.addMedicines(medicine);
  }
}