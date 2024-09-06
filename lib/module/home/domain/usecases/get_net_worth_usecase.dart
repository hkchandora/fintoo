import 'package:fintoo/core/utils/base_usecase.dart';
import 'package:fintoo/module/home/data/models/request/net_worth_request_model.dart';
import 'package:fintoo/module/home/data/models/response/net_worth_response_model.dart';
import 'package:fintoo/module/home/domain/repositories/net_worth_repository.dart';

class GetNetWorthUsecase
    extends BaseUseCase<NetWorthResponseModel, NetWorthRequestModel> {
  final NetWorthRepository netWorthRepository;

  GetNetWorthUsecase(this.netWorthRepository);

  @override
  Future<NetWorthResponseModel> call(params) async {
    return await netWorthRepository.getNetWorth(params!);
  }
}
