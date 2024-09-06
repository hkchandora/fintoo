import 'package:dio/dio.dart';
import 'package:fintoo/core/constants/strings.dart';
import 'package:fintoo/core/network/apis.dart';
import 'package:fintoo/core/network/base_dio.dart';
import 'package:fintoo/module/home/data/models/request/net_worth_request_model.dart';
import 'package:fintoo/module/home/data/models/response/net_worth_response_model.dart';

abstract class NetWorthApi {
  NetWorthApi();

  Future<NetWorthResponseModel> getNetWorth(
      NetWorthRequestModel netWorthRequestModel);
}

class NetWorthApiImpl with BaseDio implements NetWorthApi {
  @override
  Future<NetWorthResponseModel> getNetWorth(
      NetWorthRequestModel netWorthRequestModel) async {
    Dio dio = await getBaseDio();
    NetWorthResponseModel model = NetWorthResponseModel();
    try {
      final response = await dio.post(
        Apis.netWorthLiabilities,
        data: netWorthRequestModel.toJson(),
      );
      if (response.statusCode == 200) {
        model = NetWorthResponseModel.fromJson(response.data);
        model.isSuccessFull = true;
      } else {
        model.isSuccessFull = false;
      }
    } on DioException catch (e) {
      model = NetWorthResponseModel();
      model.isSuccessFull = false;
      model.errorCode = e.response!.statusCode;
      model.errorMessage =
          e.response!.data["message"] ?? Strings.somethingWentWrong;
    }
    return model;
  }
}
