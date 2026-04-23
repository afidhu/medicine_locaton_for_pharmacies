
import 'package:equatable/equatable.dart';

class PharmacyEntity extends Equatable {
  const PharmacyEntity({
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
    this.updatedAt,
  });

  final num? id;
  final String? name;
  final String? address;
  final String? latitude;
  final String? longitude;
  final String? phone;
  final String? email;
  final String? password;
  final String? license;
  final String? openTime;
  final String? closeTime;
  final String? image;
  final String? status;
  final String? createdAt;
  final String? updatedAt;

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, address, latitude, longitude, phone, email, password, license, openTime, closeTime, image, status, createdAt, updatedAt];

}