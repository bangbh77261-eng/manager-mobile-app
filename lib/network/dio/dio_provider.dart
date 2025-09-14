import 'package:dio/dio.dart';
import 'package:sinh_hoat_dang/network/dio/dio_status.dart';
import 'package:sinh_hoat_dang/screen/master/master_screen.dart';

import '../../app/app_config.dart';
import '../../main.dart';

class DioProvider {
  static Dio instance() {
    final Dio dio = Dio();
    dio
      ..options.baseUrl = DioStatus.baseUrl
      ..options.connectTimeout = DioStatus.connectionTimeout
      ..options.receiveTimeout = DioStatus.receiveTimeout
      // ..options.headers = {Headers.contentTypeHeader: 'application/json'}
      ..options.contentType = 'application/json'
      ..interceptors.add(
        InterceptorsWrapper(onRequest:
            (RequestOptions options, RequestInterceptorHandler handler) async {
          // var language = SharedPreferencesUtil.getString(
          //     AppConstant.LANGUAGE_CODE,
          //     defValue: "");
          // if (language.isNotEmpty) {
          //   options.headers.putIfAbsent('X-localization', () => '$language');
          //   options.headers.putIfAbsent('Accept-Language', () => '$language');
          // }
          if (AppConfig.tokenKey.isNotEmpty) {
            options.headers.putIfAbsent(
                'Authorization', () => 'Bearer ${AppConfig.tokenKey}');
          }

          return handler.next(options);
        }, onResponse: (response, handler) async {
          // var version = response.data["version"];
          // if (AppConfig.version == null) {
          //   AppConfig.version = version;
          // } else if (AppConfig.version != version &&
          //     !response.requestOptions.path.contains("master-data")) {
          //   print("-----------------------------------------------------");
          //   print("Refresh master data");
          //   try {
          //     final masterDataResponse =
          //         await dio.get('${DioStatus.BASE_URL}/master-data');
          //     MasterResponse data =
          //         MasterResponse.fromJson(masterDataResponse.data);
          //     if (data.data != null) {
          //       print("Refresh master data success");
          //       AppConfig.masterData = data.data;
          //       AppConfig.version = data.version;
          //     }
          //   } on DioException catch (e) {
          //     print("Refresh master data error $e");
          //   }
          // }
          if (response.statusCode == DioStatus.httpUnauthorized) {
            // AppConfig.clearData();
            // MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
            //   LoginScreen.routeName,
            //   (route) => false,
            //   arguments: 'Phiên làm việc của bạn đã hết hạn!', // tr(
            // );
            AppConfig.clearData();
            MyApp.navigatorKey.currentState?.pushNamed(
              MasterScreen.routeName,
              arguments: 'Phiên làm việc của bạn đã hết hạn!', // tr(
            );
          }
          return handler.resolve(response);
        }, onError:
            (DioException error, ErrorInterceptorHandler handler) async {
          if (error.response?.statusCode == DioStatus.httpUnauthorized) {
            AppConfig.clearData();
            MyApp.navigatorKey.currentState?.pushNamed(
              MasterScreen.routeName,
              arguments: 'Phiên làm việc của bạn đã hết hạn!', // tr(
            );
          }
          return handler.next(error);
        }),
      )
      ..interceptors.add(LogInterceptor(
        request: true,
        requestHeader: false,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ));
    return dio;
  }
}
