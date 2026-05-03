import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'medicines_state.dart';

class MedicinesCubit extends Cubit<MedicinesState> {
  MedicinesCubit() : super(MedicinesInitial());
}
