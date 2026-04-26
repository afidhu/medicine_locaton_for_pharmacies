
import '../entities/pharmcy_entities.dart';

abstract class PharmacyRepos {

  Future<List<PharmacyEntity>>  getAllPharmacy();
  Future<PharmacyEntity> addAllPharmacy(PharmacyEntity pharmacy);

}