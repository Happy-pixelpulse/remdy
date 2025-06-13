import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_doctor_event.dart';
part 'get_doctor_state.dart';

class GetDoctorBloc extends Bloc<GetDoctorEvent, GetDoctorState> {
  GetDoctorBloc() : super(GetDoctorInitial()) {
    on<GetDoctorEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
