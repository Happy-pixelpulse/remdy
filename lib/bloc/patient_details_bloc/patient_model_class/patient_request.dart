class PatientRequest {
  String? fullName;
  String? patientEmail;
  String? phoneNumber;
  String? address;
  String? pinCode;
  String? dob;
  String? hadFamilyDoctor;
  String? doctorName;
  String? doctorId;
  int? cityId;
  int? provinceId;
  int? genderId;

  PatientRequest(
      {required this.fullName,
      required this.patientEmail,
      required this.phoneNumber,
      required this.address,
      required this.pinCode,
      required this.dob,
      required this.hadFamilyDoctor,
      required this.doctorName,
      required this.doctorId,
      required this.cityId,
      required this.provinceId,
      required this.genderId});

  Map<String, dynamic> toJson() => <String, dynamic>{
    'full_name': fullName,
    'patient_email': patientEmail,
    'phone_number': phoneNumber,
    'address': address,
    'pincode': pinCode,
    'dob': dob,
    'had_family_doctor': hadFamilyDoctor,
    'doctor_name': doctorName,
    'doctorId': doctorId,
    'cityId': cityId,
    'provinceId': provinceId,
    'genderId': genderId,
  };
}
