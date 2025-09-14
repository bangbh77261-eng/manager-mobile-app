import 'package:sinh_hoat_dang/model/base/base_model.dart';

import 'base_response.dart';

class AppConfigResponse extends BaseResponse {
  List<BaseModel>? data;

  AppConfigResponse({this.data});

  @override
  AppConfigResponse.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    data = (json['data'] as List<dynamic>?)
        ?.map((e) => BaseModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
