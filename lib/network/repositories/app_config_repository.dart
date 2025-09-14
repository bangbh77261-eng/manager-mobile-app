// class AppConfigRepository {
//   Dio dio = DioProvider.instance();

//   Future<AppConfigResponse> appConfig() async {
//     try {
//       final response = await dio.get('${DioStatus.baseUrl}/api/appConfig');
//       AppConfigResponse data = AppConfigResponse.fromJson(response.data);
//       return data;
//     } catch (error) {
//       rethrow;
//     }
//   }
// }
