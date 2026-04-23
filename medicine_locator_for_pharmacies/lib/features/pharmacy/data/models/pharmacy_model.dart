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

class PharmacyModel {
  PharmacyModel({
      this.id, 
      this.name, 
      this.address, 
      this.latitude, 
      this.longitude, 
      this.phone, 
      this.email, 
      this.password, 
      this.license, 
      this.openTime, 
      this.closeTime, 
      this.image, 
      this.status, 
      this.createdAt, 
      this.updatedAt,});

  PharmacyModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    phone = json['phone'];
    email = json['email'];
    password = json['password'];
    license = json['license'];
    openTime = json['openTime'];
    closeTime = json['closeTime'];
    image = json['image'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
  num? id;
  String? name;
  String? address;
  String? latitude;
  String? longitude;
  String? phone;
  String? email;
  String? password;
  String? license;
  String? openTime;
  String? closeTime;
  String? image;
  String? status;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['address'] = address;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['phone'] = phone;
    map['email'] = email;
    map['password'] = password;
    map['license'] = license;
    map['openTime'] = openTime;
    map['closeTime'] = closeTime;
    map['image'] = image;
    map['status'] = status;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }

}