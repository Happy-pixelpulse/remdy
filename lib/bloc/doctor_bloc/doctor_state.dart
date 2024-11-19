part of 'doctor_bloc.dart';

class DoctorState extends Equatable {
  const DoctorState(this.doctorListResponse);

  final List<DoctorListResponse> doctorListResponse;

  @override
  List<Object?> get props => [doctorListResponse];

  DoctorState copyWith({List<DoctorListResponse>? doctorListResponse}) {
    return  DoctorState(doctorListResponse ?? []);
  }
}
