import 'package:fintoo/module/home/data/models/request/net_worth_request_model.dart';
import 'package:fintoo/module/home/data/models/response/net_worth_response_model.dart';

abstract class NetWorthRepository {
  Future<NetWorthResponseModel> getNetWorth(
      NetWorthRequestModel netWorthRequestModel);
}
