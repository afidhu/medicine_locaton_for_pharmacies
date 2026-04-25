import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/pharmcy_entities.dart';
import '../../domain/use_cases/Get_pharmacy_case.dart';
import '../../domain/use_cases/add_oharm_usecase.dart';

part 'pharmacy_event.dart';
part 'pharmacy_state.dart';

class PharmacyBloc extends Bloc<PharmacyEvent, PharmacyState> {
  final AddPharmacyUseCase addPharmacyUseCase;
  final GetPharmacyCase getPharmacyCase;

  PharmacyBloc({required this.addPharmacyUseCase, required this.getPharmacyCase}) : super(PharmacyInitial()) {

    on<AddPharmacyEvent>(_addPharmacyEvent);
    on<PharmacyEvent>(_getPharmacyEvent);
  }


  FutureOr<void> _addPharmacyEvent(PharmacyEvent event, Emitter<PharmacyState> emit) async{
    try{
      final  pharmacy = await addPharmacyUseCase.addPharmacyCase(event);
      emit(PharmacyAdded(pharmacy));
    } catch(e){
      emit(PharmacyLoadedError('Error adding pharmacy: ${e.toString()}'));
    }
  }

  FutureOr<void> _getPharmacyEvent(PharmacyEvent event, Emitter<PharmacyState> emit)  async{
    try{
      final  pharmacy = await getPharmacyCase.getPharmacyCase();
      emit(PharmacyLoaded(pharmacy));
    } catch(e){
      emit(PharmacyLoadedError('Error adding pharmacy: ${e.toString()}'));
    }
  }
}
