import 'package:fintoo/module/home/data/data_source/net_worth_api.dart';
import 'package:fintoo/module/home/data/models/request/net_worth_request_model.dart';
import 'package:fintoo/module/home/data/models/response/net_worth_response_model.dart';
import 'package:fintoo/module/home/domain/repositories/net_worth_repository.dart';

class NetWorthRepositoryImpl implements NetWorthRepository {
  final NetWorthApi netWorthApi;

  NetWorthRepositoryImpl(this.netWorthApi);

  @override
  Future<NetWorthResponseModel> getNetWorth(
      NetWorthRequestModel netWorthRequestModel) async {
    final NetWorthResponseModel netWorthResponseModel =
        await netWorthApi.getNetWorth(netWorthRequestModel);
    return netWorthResponseModel;
  }
}
