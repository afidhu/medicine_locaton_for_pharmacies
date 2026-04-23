
import 'package:equatable/equatable.dart';

class MedicinesEntity extends Equatable {

 final num? id;
  final String? name;
  final String? type;
  final String? price;
  final String? imageUrl;
  final String? description;
  final String? createdAt;
  final String? updatedAt;
  const MedicinesEntity({
    this.id,
    this.name,
    this.type,
    this.price,
    this.imageUrl,
    this.description,
    this.createdAt,
    this.updatedAt,});

  @override
  // TODO: implement props
  List<Object?> get props =>[id,name,type,price,imageUrl,description,createdAt,updatedAt];

}