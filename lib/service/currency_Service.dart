
import 'package:dio/dio.dart';
import 'package:valyuta/core/constants/api_const.dart';
import 'package:valyuta/models/currence_model.dart';

class CurrencyService {
  static Future<List<CurrencyModel>> getCurrency() async {
    Response res = await Dio().get(ApiConst.api);
    return (res.data as List).map((e) => CurrencyModel.fromJson(e)).toList();
  }
}