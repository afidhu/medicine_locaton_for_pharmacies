import 'dart:async';

import 'package:bloc/bloc.dart';
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

    on<MedicinesEvent>(_getMedicines);

    on<AddMedicine>(_addMedicines);

  }


  FutureOr<void> _getMedicines(MedicinesEvent event, Emitter<MedicinesState> emit) async{
    emit(MedicinesLoading());
        try{
          final allMedicine = await getMedicineUseCases.getMedicines();
          emit(MedicinesLoaded(allMedicine));
        } catch(e){
          emit(MedicinesError('error at :${e.toString()}'));
        }
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
}
