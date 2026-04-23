import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pharmacy_event.dart';
part 'pharmacy_state.dart';

class PharmacyBloc extends Bloc<PharmacyEvent, PharmacyState> {
  PharmacyBloc() : super(PharmacyInitial()) {
    on<PharmacyEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
