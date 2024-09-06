import 'package:fintoo/core/constants/strings.dart';
import 'package:fintoo/core/utils/alert.dart';
import 'package:fintoo/module/home/data/models/request/net_worth_request_model.dart';
import 'package:fintoo/module/home/domain/usecases/get_net_worth_usecase.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final GetNetWorthUsecase getNetWorthUsecase;

  double? networthSum;
  double? liabilitySum;
  String? networthSumFormatted;
  String? liabilitySumFormatted;
  double? assetData;
  String? assetSumFormatted;
  RxBool isApiCalling = true.obs;

  HomeController(this.getNetWorthUsecase);

  @override
  void onInit() {
    getNetWorthApiCall();
    super.onInit();
  }

  getNetWorthApiCall() async {
    getNetWorthUsecase(NetWorthRequestModel(
      fpLogId: 10663,
      fpUserId: 49608,
      userId: 235510,
      filterType: "all",
    )).then((value) {
      isApiCalling(false);
      if (value.isSuccessFull!) {
        networthSum = value.netWorthData!.networthSum;
        liabilitySum = value.netWorthData!.liabilitySum;
        networthSumFormatted = value.netWorthData!.networthSumFormatted;
        liabilitySumFormatted = value.netWorthData!.liabilitySumFormatted;
        assetData = value.netWorthData!.assetData;
        assetSumFormatted = value.netWorthData!.assetSumFormatted;
      } else if (value.errorCode == 500) {
        Alert.showErrorSnackBar(title: Strings.serverError);
      } else {
        Alert.showErrorSnackBar(title: value.errorMessage!);
      }
    });
  }
}
