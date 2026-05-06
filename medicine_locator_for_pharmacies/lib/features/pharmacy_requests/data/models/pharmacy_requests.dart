/// id : 1
/// pharmacyId : 1
/// message : "i want to join with you"
/// isApproved : false
/// requestDate : "2026-05-06T03:15:07.338Z"
/// createdAt : "2026-05-06T03:15:07.338Z"
/// updatedAt : "1969-12-31T21:00:00.000Z"

class PharmacyRequests {
  PharmacyRequests({
      this.id, 
      this.pharmacyId, 
      this.message, 
      this.isApproved, 
      this.requestDate, 
      this.createdAt, 
      this.updatedAt,});

  PharmacyRequests.fromJson(dynamic json) {
    id = json['id'];
    pharmacyId = json['pharmacyId'];
    message = json['message'];
    isApproved = json['isApproved'];
    requestDate = json['requestDate'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
  num? id;
  num? pharmacyId;
  String? message;
  bool? isApproved;
  String? requestDate;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['pharmacyId'] = pharmacyId;
    map['message'] = message;
    map['isApproved'] = isApproved;
    map['requestDate'] = requestDate;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }

}