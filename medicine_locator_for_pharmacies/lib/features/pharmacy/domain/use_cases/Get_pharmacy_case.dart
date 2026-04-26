
import '../../data/repo_impl/pharmacy_repo_impl.dart';
import '../entities/pharmcy_entities.dart';
import '../repositories/pharmacy_repos.dart';

class GetPharmacyCase {

  final PharmacyRepos _pharmacyRepos;

  GetPharmacyCase(this._pharmacyRepos);

  Future<List<PharmacyEntity>> getPharmacyCase(){
    return _pharmacyRepos.getAllPharmacy();
  }
}
