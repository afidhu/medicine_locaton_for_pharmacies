
import '../entities/medicine_entity.dart';

abstract class RepoMedicines {

  Future<List<MedicinesEntity>> getMedicines();
  Future<MedicinesEntity> addMedicines(MedicinesEntity medicine);
}