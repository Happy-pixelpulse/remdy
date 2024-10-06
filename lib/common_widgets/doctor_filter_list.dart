import 'package:equatable/equatable.dart';

class DoctorFilterListData extends Equatable{
 final int id;
 final String name;

  const DoctorFilterListData({required this.id, required this.name,});

  @override
  List<Object?> get props => [id,name];
}