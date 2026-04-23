
import '../../domain/entities/medicine_entity.dart';

/// id : 1
/// name : "Paracetamol"
/// type : "tablet"
/// price : "1200"
/// imageUrl : "https://www.stelonbiotech.com/wp-content/uploads/2022/04/PYREMUST-650-TAB.jpg"
/// description : "Paracetamol (acetaminophen), with the molecular formula "
/// createdAt : "2026-04-23T17:42:22.253Z"
/// updatedAt : "1969-12-31T21:00:00.000Z"

class MedicinesModel  extends MedicinesEntity {
  const MedicinesModel({
      super.id,
      super.name,
      super.type,
      super.price,
      super.imageUrl,
      super.description,
      super.createdAt,
      super.updatedAt,
  });

  factory MedicinesModel.fromJson(dynamic json) {
    return MedicinesModel(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      description: json['description'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  Map<String, dynamic> toJson() {

    return {
      'id': id,
      'name': name,
      'type': type,
      'price': price,
      'imageUrl': imageUrl,
      'description': description,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

}