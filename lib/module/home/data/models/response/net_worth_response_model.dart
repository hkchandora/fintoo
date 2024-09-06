import 'package:fintoo/core/network/model_wrapper.dart';

class NetWorthResponseModel extends ModelWrapper<NetWorthData> {
  String? netWorthErrorCode;
  String? message;
  NetWorthData? netWorthData;

  NetWorthResponseModel(
      {this.netWorthErrorCode, this.message, this.netWorthData});

  NetWorthResponseModel.fromJson(Map<String, dynamic> json) {
    netWorthErrorCode = json['error_code'];
    message = json['message'];
    netWorthData =
        json['data'] != null ? NetWorthData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['error_code'] = netWorthErrorCode;
    data['message'] = message;
    if (netWorthData != null) {
      data['data'] = netWorthData!.toJson();
    }
    return data;
  }
}

class NetWorthData {
  double? networthSum;
  double? liabilitySum;
  String? networthSumFormatted;
  String? liabilitySumFormatted;
  double? assetData;
  String? assetSumFormatted;

  NetWorthData(
      {this.networthSum,
      this.liabilitySum,
      this.networthSumFormatted,
      this.liabilitySumFormatted,
      this.assetData,
      this.assetSumFormatted});

  NetWorthData.fromJson(Map<String, dynamic> json) {
    networthSum = json['networth_sum'];
    liabilitySum = json['liability_sum'];
    networthSumFormatted = json['networth_sum_formatted'];
    liabilitySumFormatted = json['liability_sum_formatted'];
    assetData = json['asset_data'];
    assetSumFormatted = json['asset_sum_formatted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['networth_sum'] = networthSum;
    data['liability_sum'] = liabilitySum;
    data['networth_sum_formatted'] = networthSumFormatted;
    data['liability_sum_formatted'] = liabilitySumFormatted;
    data['asset_data'] = assetData;
    data['asset_sum_formatted'] = assetSumFormatted;
    return data;
  }
}
