import 'package:dio/dio.dart';
import 'package:sinh_hoat_dang/network/dio/dio_status.dart';
import 'package:sinh_hoat_dang/network/request/login_request.dart';

import '../dio/dio_provider.dart';
import '../response/login_response.dart';

class AuthRepository {
  Dio dio = DioProvider.instance();

  Future<LoginResponse> login(LoginRequest request) async {
    try {
      final response = await dio.post('${DioStatus.baseUrl}/api/login',
          data: request.toJson());
      LoginResponse data = LoginResponse.fromJson(response.data);
      return data;
    } catch (error) {
      rethrow;
    }
  }
}
