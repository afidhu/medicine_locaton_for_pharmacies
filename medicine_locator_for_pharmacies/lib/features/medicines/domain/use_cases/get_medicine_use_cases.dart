
import '../../data/repo_impl/repo_medicines_impl.dart';
import '../entities/medicine_entity.dart';

class GetMedicineUseCases {
  final RepoMedicinesImpl _medicinesImpl;
  GetMedicineUseCases(this._medicinesImpl);

  Future<List<MedicinesEntity>> getMedicines() async{
    return _medicinesImpl.getMedicines();
  }
}