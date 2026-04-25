part of 'pharmacy_bloc.dart';

@immutable
sealed class PharmacyEvent {}

class GetPharmacyEvent extends PharmacyEvent {}
class AddPharmacyEvent extends PharmacyEvent {
  final PharmacyEntity pharmacyEntity;
  AddPharmacyEvent(this.pharmacyEntity);
}

class UpdatePharmacyEvent extends PharmacyEvent {}
class DeletePharmacyEvent extends PharmacyEvent {}
class SearchPharmacyEvent extends PharmacyEvent{}
