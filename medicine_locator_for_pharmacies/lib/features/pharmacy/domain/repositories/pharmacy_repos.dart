
import '../entities/pharmcy_entities.dart';

abstract class PharmacyRepos {

  Future<List<PharmacyEntity>>  getAllPharmacy();
  Future<PharmacyEntity> addAllPharmacy(PharmacyEntity pharmacy);

  Future<MedicineForPharmacyEntity> addMedicineForPharmacy(MedicineForPharmacyEntity medicinePharmacy);
  Future<List<MedicineForPharmacyEntity>> getMedicineForPharmacy();

}