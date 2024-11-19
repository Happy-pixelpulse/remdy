import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:remdy/bloc/doctor_bloc/model/doctor_list_request.dart';

class DoctorListApi {
  Future<List<DoctorListRequest>> fetchDoctorList() async {
    try {
      final response = await http.get(Uri.parse(
          'http://184.169.211.131:3000/api/v1/homepage/get-doctors-by-postal-code'));
      if (response.statusCode == 200) {
        final body = json.decode(response.body) as List;
        return body.map((e) {
          return DoctorListRequest(
            id: e['id'] as int,
            profileImageUrl: e['profile_image_url'] as String,
            userName: e['user_name'] as String,
          );

        }).toList();
      }
    } on SocketException {
      throw Exception('error while fetching data');
    }
    throw Exception('error while fetching data');
  }
}
