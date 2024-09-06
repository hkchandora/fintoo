import 'package:fintoo/module/home/data/data_source/net_worth_api.dart';
import 'package:fintoo/module/home/data/repositories/net_worth_repository_impl.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    /// Profile
    Get.lazyPut<NetWorthApi>(
      () => NetWorthApiImpl(),
      fenix: true,
    );

    Get.lazyPut<NetWorthRepositoryImpl>(
      () => NetWorthRepositoryImpl(
        Get.find(),
      ),
      fenix: true,
    );
  }
}
