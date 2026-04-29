/// id : 1
/// pharmacyId : 1
/// message : "i want to join"
/// requestDate : "2026-04-28T22:44:29.907Z"
/// createdAt : "2026-04-28T22:44:29.907Z"
/// updatedAt : "2026-04-28T22:44:29.907Z"

class PharmaciesRequestModel {
  PharmaciesRequestModel({
      this.id, 
      this.pharmacyId, 
      this.message, 
      this.requestDate, 
      this.createdAt, 
      this.updatedAt,});

  PharmaciesRequestModel.fromJson(dynamic json) {
    id = json['id'];
    pharmacyId = json['pharmacyId'];
    message = json['message'];
    requestDate = json['requestDate'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
  num? id;
  num? pharmacyId;
  String? message;
  String? requestDate;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['pharmacyId'] = pharmacyId;
    map['message'] = message;
    map['requestDate'] = requestDate;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }

}