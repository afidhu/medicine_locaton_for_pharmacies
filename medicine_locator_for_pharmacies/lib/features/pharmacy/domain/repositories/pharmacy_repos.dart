

import '../../data/models/pharmacy_model.dart';
import '../entities/pharmcy_entities.dart';

abstract class PharmacyRepos {

  Future<List<PharmacyEntity>>  getAllPharmacy();
  Future<PharmacyEntity> addAllPharmacy(PharmacyModel pharmacy);

}