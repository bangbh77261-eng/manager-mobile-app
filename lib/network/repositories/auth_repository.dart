

// class AuthRepository {
//   Dio dio = DioProvider.instance();

//   Future<LoginResponse> login(LoginRequest request) async {
//     try {
//       final response = await dio.post('${DioStatus.baseUrl}/api/login',
//           data: request.toJson());
//       LoginResponse data = LoginResponse.fromJson(response.data);
//       return data;
//     } catch (error) {
//       rethrow;
//     }
//   }
// }
