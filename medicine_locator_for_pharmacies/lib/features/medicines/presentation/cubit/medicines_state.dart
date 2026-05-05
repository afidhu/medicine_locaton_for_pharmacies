part of 'medicines_cubit.dart';

@immutable
sealed class MedicinesState {}

final class MedicinesInitial extends MedicinesState {}
final class MedicinesTotal extends MedicinesState {
  final int total_medicine;

  MedicinesTotal(this.total_medicine);
}

final class PharmacyTotal extends MedicinesState {
  final int total_pharmacy;

  PharmacyTotal(this.total_pharmacy);
}
