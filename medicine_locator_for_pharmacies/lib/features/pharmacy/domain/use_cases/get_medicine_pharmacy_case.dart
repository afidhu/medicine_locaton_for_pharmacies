

import '../entities/pharmcy_entities.dart';
import '../repositories/pharmacy_repos.dart';

class GetMedicinePharmacyCase {
  final PharmacyRepos pharmacyRepos;

  GetMedicinePharmacyCase(this.pharmacyRepos);

  Future<List<MedicineForPharmacyEntity>> getAllMedicinePharmacy() async{
    return pharmacyRepos.getMedicineForPharmacy();
  }
}