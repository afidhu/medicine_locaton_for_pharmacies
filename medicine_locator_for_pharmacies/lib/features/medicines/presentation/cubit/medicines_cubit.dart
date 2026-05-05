import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'medicines_state.dart';

class MedicinesCubit extends Cubit<MedicinesState> {
  MedicinesCubit() : super(MedicinesInitial());


  Future<int> countAllMedicines() async {
    emit(MedicinesInitial());
    print('100');
    try {
      emit(MedicinesTotal(100));

    } catch (e) {
      print("errorww at :$e");
    }
    return 0;
  }

  Future<int> countAllPharmacy() async{
    print('133');
    emit(MedicinesInitial());
    try{
      emit(PharmacyTotal(133));

    } catch(e){
      print("errorww at :$e");
    }
    return 0;
  }
}
