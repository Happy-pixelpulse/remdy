import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'hospital_event.dart';
part 'hospital_state.dart';

class HospitalBloc extends Bloc<HospitalEvent, HospitalState> {
  HospitalBloc() : super(HospitalInitial()) {
    on<HospitalEvent>((event, emit) {
    });
  }
}
