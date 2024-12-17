import 'hospital_model/near_by_hospital_response_model.dart';

abstract class HospitalScreenState {}

final class HospitalScreenInitial extends HospitalScreenState {}

class NearByHospitalRequestState extends HospitalScreenState{
}

class NearByHospitalResponseState extends HospitalScreenState{
  NearByHospitalResponseModel nearByHospitalResponseModel;
NearByHospitalResponseState({required this.nearByHospitalResponseModel});
}

class NearByHospitalLoaded extends HospitalScreenState {}

class NearByHospitalErrorState extends HospitalScreenState{
  String error;
  NearByHospitalErrorState({required this.error});
}