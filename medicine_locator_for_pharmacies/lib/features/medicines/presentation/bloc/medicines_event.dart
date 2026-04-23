part of 'medicines_bloc.dart';

@immutable
sealed class MedicinesEvent {}

class GetMedicine extends MedicinesEvent{}
class AddMedicine extends MedicinesEvent{
  final MedicinesEntity medicine;
  AddMedicine(this.medicine);
}
class DeleteMedicine extends MedicinesEvent{}