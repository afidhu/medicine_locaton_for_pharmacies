part of 'pharmacy_bloc.dart';

@immutable
sealed class PharmacyState {}

 class PharmacyInitial extends PharmacyState {}
 class PharmacyLoading extends PharmacyState {}
 class PharmacyLoadedError extends PharmacyState {
  final String errorMessage;
  PharmacyLoadedError(this.errorMessage);
 }
 class PharmacyAdded extends PharmacyState {
  final PharmacyEntity pharmacy;
  PharmacyAdded(this.pharmacy);
 }

 class PharmacyLoaded extends PharmacyState {
  final List<PharmacyEntity> pharmacy;
  PharmacyLoaded(this.pharmacy);
 }
