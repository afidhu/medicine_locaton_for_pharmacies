/// id : 1
/// name : "Paracetamol"
/// type : "tablet"
/// price : "1200"
/// imageUrl : "https://www.stelonbiotech.com/wp-content/uploads/2022/04/PYREMUST-650-TAB.jpg"
/// description : "Paracetamol (acetaminophen), with the molecular formula "
/// createdAt : "2026-04-23T17:42:22.253Z"
/// updatedAt : "1969-12-31T21:00:00.000Z"

class MedicinesModel {
  MedicinesModel({
      this.id, 
      this.name, 
      this.type, 
      this.price, 
      this.imageUrl, 
      this.description, 
      this.createdAt, 
      this.updatedAt,});

  MedicinesModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    price = json['price'];
    imageUrl = json['imageUrl'];
    description = json['description'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
  num? id;
  String? name;
  String? type;
  String? price;
  String? imageUrl;
  String? description;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['type'] = type;
    map['price'] = price;
    map['imageUrl'] = imageUrl;
    map['description'] = description;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }

}