import 'package:fintoo/core/utils/base_usecase.dart';

class NetWorthRequestModel extends Params {
  int? fpLogId;
  int? fpUserId;
  int? userId;
  String? filterType;

  NetWorthRequestModel(
      {this.fpLogId, this.fpUserId, this.userId, this.filterType});

  NetWorthRequestModel.fromJson(Map<String, dynamic> json) {
    fpLogId = json['fp_log_id'];
    fpUserId = json['fp_user_id'];
    userId = json['user_id'];
    filterType = json['filter_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fp_log_id'] = fpLogId;
    data['fp_user_id'] = fpUserId;
    data['user_id'] = userId;
    data['filter_type'] = filterType;
    return data;
  }
}
