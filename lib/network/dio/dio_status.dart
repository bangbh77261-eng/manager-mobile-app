// class DioStatus extends Equatable {
//   static const String baseUrl = '';

//   static const Duration receiveTimeout = Duration(seconds: 60);
//   static const Duration connectionTimeout = Duration(seconds: 60);
//   static const int failure = 0; // REQUEST FAILED
//   static const int success = 1; // REQUEST SUCCESS
//   static const int tokenExprire = 2; // REQUEST WITH TOKEN EXPIRE

//   static const int httpSuccess = 200;
//   static const int httpUnauthorized = 401;

//   static const int defaultLimit = 20;

//   final String? message;
//   final int? code;
//   final DateTime timeStamp = DateTime.now();

//   DioStatus({this.message, this.code});

//   factory DioStatus.init() {
//     return DioStatus(message: '', code: failure);
//   }

//   @override
//   String toString() {
//     return 'DioStatus{message: $message, code: $code, timeStamp: $timeStamp}';
//   }

//   @override
//   List<Object?> get props => [message, code, timeStamp];
// }
