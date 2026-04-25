
import '../../data/repo_impl/pharmacy_repo_impl.dart';
import '../entities/pharmcy_entities.dart';

class GetPharmacyCase {

  final PharmacyRepoImpl pharmacyRepoImpl;

  GetPharmacyCase(this.pharmacyRepoImpl);

  Future<List<PharmacyEntity>> getPharmacyCase(){
    return pharmacyRepoImpl.getAllPharmacy();
  }
}
