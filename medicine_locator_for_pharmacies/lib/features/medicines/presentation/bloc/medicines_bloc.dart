import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/medicine_entity.dart';
import '../../domain/use_cases/add_medicine_use_cases.dart';
import '../../domain/use_cases/get_medicine_use_cases.dart';

part 'medicines_event.dart';
part 'medicines_state.dart';

class MedicinesBloc extends Bloc<MedicinesEvent, MedicinesState> {
  final GetMedicineUseCases getMedicineUseCases;
  final AddMedicineUseCases addMedicineUseCases;
  MedicinesBloc(this.getMedicineUseCases,this.addMedicineUseCases) : super(MedicinesInitial()) {

    on<GetMedicine>(_getMedicines);

    on<AddMedicine>(_addMedicines);

  }




  FutureOr<void> _addMedicines(AddMedicine event, Emitter<MedicinesState> emit) async {
    emit(MedicinesLoading());
    try{
      final medicine = await addMedicineUseCases.addMedicines(event.medicine);
      emit(MedicinesLoaded([medicine]));
    } catch(e){
      emit(MedicinesError('error at :${e.toString()}'));
    }
  }

  FutureOr<void> _getMedicines(GetMedicine event, Emitter<MedicinesState> emit)  async{
    debugPrint('get medicine1');
    emit(MedicinesLoading());
    debugPrint('get medicine2');
    try{
      final allMedicine = await getMedicineUseCases.getMedicines();
      debugPrint(allMedicine.toString());
      emit(MedicinesLoaded(allMedicine));
    } catch(e){
      debugPrint('error at :${e.toString()}');
      emit(MedicinesError('error at :${e.toString()}'));
    }
  }
}
