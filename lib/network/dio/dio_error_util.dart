

// class DioErrorUtil {
//   DioErrorUtil._();

//   static DioStatus handleError(dynamic error) {
//     String errorDescription = "";
//     int? code = error?.response?.statusCode;
//     if (error is DioException) {
//       switch (error.type) {
//         case DioExceptionType.cancel:
//           // errorDescription = "Request to API server was cancelled";
//           errorDescription = 'Yêu cầu đến máy chủ bị hủy';
//           break;
//         case DioExceptionType.connectionTimeout:
//           // errorDescription = "Connection timeout with API server";
//           errorDescription = 'Kết nối đến máy chủ vượt quá thời gian cho phép';
//           break;
//         case DioExceptionType.unknown:
//           // errorDescription =
//           //     "Connection to API server failed due to internet connection";
//           errorDescription = 'Kết nối đến máy chủ thất bại do kết nối internet';
//           break;
//         case DioExceptionType.receiveTimeout:
//           // errorDescription = "Receive timeout in connection with API server";
//           errorDescription = 'Phản hồi từ máy chủ vượt quá thời gian cho phép';
//           break;
//         case DioExceptionType.badResponse:
//           // errorDescription =
//           //     "Received invalid status code: ${error.response.statusCode}";
//           errorDescription = 'Có lỗi xảy ra ${error.response?.statusCode}';
//           break;
//         case DioExceptionType.sendTimeout:
//           // errorDescription = "Send timeout in connection with API server";
//           errorDescription =
//               'Gửi yêu cầu đến máy chủ vượt quá thời gian cho phép';
//           break;
//         default:
//           errorDescription = error.toString();
//       }
//     } else {
//       errorDescription = "Lỗi kết nối"; //tr('error');
//     }
//     return DioStatus(message: errorDescription, code: code);
//   }
// }
