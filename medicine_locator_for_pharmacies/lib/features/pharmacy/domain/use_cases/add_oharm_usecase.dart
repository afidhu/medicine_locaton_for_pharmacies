


import '../../data/repo_impl/pharmacy_repo_impl.dart';
import '../entities/pharmcy_entities.dart';

class AddPharmacyUseCase {

  final PharmacyRepoImpl pharmacyRepoImpl;

  AddPharmacyUseCase(this.pharmacyRepoImpl);

  Future<PharmacyEntity> addPharmacyCase( pharmacy){
     return pharmacyRepoImpl.addAllPharmacy(pharmacy);
  }
}