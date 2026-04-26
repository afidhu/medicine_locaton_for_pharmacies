import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/pharmcy_entities.dart';
import '../../domain/use_cases/Get_pharmacy_case.dart';
import '../../domain/use_cases/add_oharm_usecase.dart';

part 'pharmacy_event.dart';
part 'pharmacy_state.dart';

class PharmacyBloc extends Bloc<PharmacyEvent, PharmacyState> {
  final AddPharmacyUseCase addPharmacyUseCase;
  final GetPharmacyCase getPharmacyCase;

  PharmacyBloc( this.addPharmacyUseCase, this.getPharmacyCase) : super(PharmacyInitial()) {

    on<AddPharmacyEvent>(_addPharmacyEvent);
    on<GetPharmacyEvent>(_getPharmacyEvent);
  }



  FutureOr<void> _addPharmacyEvent(AddPharmacyEvent event, Emitter<PharmacyState> emit) async{
    try{
      PharmacyEntity  pharmacyEntity = PharmacyEntity(
        address: event.address,
      name: event.name,
      latitude: event.latitude,
      longitude: event.longitude,
      phone: event.phone,
      email: event.email,
      password: event.password,
      license: event.license,
      openTime: event.openTime,
      closeTime: event.closeTime,
      image: event.image,
      status: event.status,
      );
      final  pharmacy = await addPharmacyUseCase.addPharmacyCase(pharmacyEntity);
      emit(PharmacyAdded(pharmacy));
    } catch(e){
      emit(PharmacyLoadedError('Error adding pharmacy: ${e.toString()}'));
    }
  }



  FutureOr<void> _getPharmacyEvent(GetPharmacyEvent event, Emitter<PharmacyState> emit) async{
    try{
      debugPrint('get pharmacy');
      final  pharmacy = await getPharmacyCase.getPharmacyCase();
      debugPrint('pharm ${pharmacy.toString()}');
      emit(PharmacyLoaded(pharmacy));
    } catch(e){
      debugPrint('error ${e.toString()}');
      emit(PharmacyLoadedError('Error adding pharmacy: ${e.toString()}'));
    }
  }
}
