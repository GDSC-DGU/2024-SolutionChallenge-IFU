import 'package:get/get.dart';
import 'package:ifu/providers/home/home_provider.dart';
import 'package:ifu/repositories/home/home_repository.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    // Provider
    Get.lazyPut<HomeProvider>(() => HomeProvider());

    // Repository
    Get.lazyPut<HomeRepository>(() => HomeRepository());
  }
}