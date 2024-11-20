import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';

class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  DoctorBloc(super.initialState);
  // DoctorBloc(): super (DoctorState());

}
