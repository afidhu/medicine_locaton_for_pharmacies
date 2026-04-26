part of 'pharmacy_bloc.dart';

@immutable
sealed class PharmacyEvent {}

class GetPharmacyEvent extends PharmacyEvent {}
class AddPharmacyEvent extends PharmacyEvent {

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


  AddPharmacyEvent({required this.name, required this.address, required this.latitude, required this.longitude, required this.phone, required this.email, required this.password, required this.license, required this.openTime, required this.closeTime, required this.image, required this.status,});
}

class UpdatePharmacyEvent extends PharmacyEvent {}
class DeletePharmacyEvent extends PharmacyEvent {}
class SearchPharmacyEvent extends PharmacyEvent{}
