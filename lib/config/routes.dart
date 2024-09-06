import 'package:fintoo/module/home/presentation/bindings/home_binding.dart';
import 'package:fintoo/module/home/presentation/views/home_view.dart';
import 'package:get/get.dart';

const String home = "home";

List<GetPage> routes = [
  GetPage(
    name: '/$home',
    page: () => const HomeView(),
    binding: HomeBinding(),
  ),
];
