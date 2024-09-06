import 'package:fintoo/module/home/data/repositories/net_worth_repository_impl.dart';
import 'package:fintoo/module/home/domain/usecases/get_net_worth_usecase.dart';
import 'package:fintoo/module/home/presentation/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetNetWorthUsecase>(
        () => GetNetWorthUsecase(Get.find<NetWorthRepositoryImpl>()));

    Get.lazyPut<HomeController>(
      () => HomeController(
        Get.find<GetNetWorthUsecase>(),
      ),
    );
  }
}
