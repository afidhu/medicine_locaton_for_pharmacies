

import '../../data/repo_impl/repo_medicines_impl.dart';
import '../entities/medicine_entity.dart';

class AddMedicineUseCases {

  final RepoMedicinesImpl _medicinesImpl;
  AddMedicineUseCases(this._medicinesImpl);

  Future<MedicinesEntity> addMedicines(MedicinesEntity medicine) async{
    return _medicinesImpl.addMedicines(medicine);
  }
}