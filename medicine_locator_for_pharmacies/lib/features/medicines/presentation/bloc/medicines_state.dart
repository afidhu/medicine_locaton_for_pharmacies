part of 'medicines_bloc.dart';

@immutable
sealed class MedicinesState {}

 class MedicinesInitial extends MedicinesState {}
 class MedicinesLoading extends MedicinesState {}

 class MedicinesError extends MedicinesState {
  final String message;
  MedicinesError(this.message);
 }


 class MedicinesLoaded extends MedicinesState {
  final  List<MedicinesEntity> medicines;
  MedicinesLoaded(this.medicines);
 }
