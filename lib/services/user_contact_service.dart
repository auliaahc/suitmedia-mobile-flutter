import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:suitmedia_mobile_flutter/models/user_contact_model.dart';

class UserContactService {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://reqres.in/api/users?page=1&per_page=10';

  Future<UserContactModel> getUserContact() async {
    try {
      final response = await _dio.get(_baseUrl);
      final data = response.data as Map<String, dynamic>;
      if (kDebugMode) {
        print(data);
      }
      return UserContactModel.fromJson(data);
    } on DioException catch (e) {
      throw 'Error $e';
    }
  }
}