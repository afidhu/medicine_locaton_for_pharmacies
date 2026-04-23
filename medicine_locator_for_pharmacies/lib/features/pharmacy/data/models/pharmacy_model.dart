import '../../domain/entities/pharmcy_entities.dart';

/// id : 1
/// name : "AfyaCare Pharmacy"
/// address : "Mikocheni B, Dar es Salaam, Tanzania"
/// latitude : "-6.7833"
/// longitude : "39.2667"
/// phone : "+255712345678"
/// email : "info@afyacare.co.tz"
/// password : "123"
/// license : "TZ-Pharm-2024-00123"
/// openTime : "08:00"
/// closeTime : "22:00"
/// image : "https://example.com/images/afyacare-pharmacy.jpg"
/// status : "pending"
/// createdAt : "2026-04-23T20:37:44.905Z"
/// updatedAt : "2026-04-23T20:37:44.905Z"

class PharmacyModel extends PharmacyEntity {
  const PharmacyModel({
     super.id,
     super.name,
     super.address,
     super.latitude,
     super.longitude,
     super.phone,
     super.email,
     super.password,
     super.license,
     super.openTime,
     super.closeTime,
     super.image,
     super.status,
     super.createdAt,
     super.updatedAt,});

  factory PharmacyModel.fromJson(dynamic json) {
    return PharmacyModel(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      phone: json['phone'],
      email: json['email'],
      password: json['password'],
      license: json['license'],
      openTime: json['openTime'],
      closeTime: json['closeTime'],
      image: json['image'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {

    return{
      'id': id,
      'name': name,
      'address': address,
      'latitude': latitude,
      'longitude': longitude,
      'phone': phone,
      'email': email,
      'password': password,
      'license': license,
      'openTime': openTime,
      'closeTime': closeTime,
      'image': image,
      'status': status
    };
  }

}