
import 'package:dio/dio.dart';
import 'package:valyuta/core/constants/api_const.dart';
import 'package:valyuta/models/USDcurrency_models.dart';

class USDCURENCYSERVICE {
  Future<UsdModel> getUsd() async {
    Response res = await Dio().get(ApiConst.usdapi);
    return UsdModel.fromJson(res.data);
  }
}