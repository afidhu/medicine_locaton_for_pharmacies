

import '../entities/pharmcy_entities.dart';
import '../repositories/pharmacy_repos.dart';

class AddMedicinePharmacyCase {

  final PharmacyRepos pharmacyRepos;
  AddMedicinePharmacyCase(this.pharmacyRepos);

  Future<MedicineForPharmacyEntity> addMedicinePharmacy(MedicineForPharmacyEntity medicinePharmacy) async{
    return pharmacyRepos.addMedicineForPharmacy(medicinePharmacy);
  }
}