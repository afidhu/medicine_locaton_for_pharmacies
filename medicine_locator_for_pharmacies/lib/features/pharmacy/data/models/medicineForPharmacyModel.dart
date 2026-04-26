import '../../domain/entities/pharmcy_entities.dart';

/// id : 1
/// distances : "39km"
/// rates : 0
/// reviews : 0
/// availability : true
/// medicineId : 1
/// pharmacyId : 1
/// createdAt : "2026-04-26T22:47:07.548Z"
/// updatedAt : "1969-12-31T21:00:00.000Z"

class MedicineForPharmacyModel  extends MedicineForPharmacyEntity{
  const MedicineForPharmacyModel({
      super.id,
      super.distances,
      super.rates,
      super.reviews,
      super.availability,
      super.medicineId,
      super.pharmacyId,
      super.createdAt,
      super.updatedAt,});

 factory MedicineForPharmacyModel.fromJson(dynamic json) {

    return MedicineForPharmacyModel(
      id: json['id'],
      distances: json['distances'],
      rates: json['rates'],
      reviews: json['reviews'],
      availability: json['availability'],
      medicineId: json['medicineId'],
      pharmacyId: json['pharmacyId'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );


  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};

    return {
      'id': id,
      'distances': distances,
      'rates': rates,
      'reviews': reviews,
      'availability': availability,
      'medicineId': medicineId,
      'pharmacyId': pharmacyId,
      'createdAt': createdAt,
      'updatedAt': updatedAt

    };
  }

}