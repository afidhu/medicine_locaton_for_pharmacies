


import '../../data/repo_impl/pharmacy_repo_impl.dart';
import '../entities/pharmcy_entities.dart';
import '../repositories/pharmacy_repos.dart';

class AddPharmacyUseCase {

  final PharmacyRepos _pharmacyRepos;

  AddPharmacyUseCase(this._pharmacyRepos);

  Future<PharmacyEntity> addPharmacyCase(PharmacyEntity pharmacy){
     return _pharmacyRepos.addAllPharmacy(pharmacy);
  }
}