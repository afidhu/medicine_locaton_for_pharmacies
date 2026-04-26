
import '../../data/repo_impl/repo_medicines_impl.dart';
import '../entities/medicine_entity.dart';
import '../repositories/repo_medicines.dart';

class GetMedicineUseCases {
  final RepoMedicines _repoMedicines;
  GetMedicineUseCases(this._repoMedicines);

  Future<List<MedicinesEntity>> getMedicines() async{
    return _repoMedicines.getMedicines();
  }
}