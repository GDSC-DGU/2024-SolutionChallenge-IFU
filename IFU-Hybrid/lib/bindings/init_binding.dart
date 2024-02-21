import 'package:get/get.dart';
import 'package:ifu/providers/home/home_provider.dart';
import 'package:ifu/providers/solving/solving_provider.dart';
import 'package:ifu/repositories/home/home_repository.dart';
import 'package:ifu/repositories/solving/solving_repository.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    // Provider
    Get.lazyPut<HomeProvider>(() => HomeProvider());
    Get.lazyPut<SolvingProvider>(() => SolvingProvider());
    // Repository
    Get.lazyPut<HomeRepository>(() => HomeRepository());
    Get.lazyPut<SolvingRepository>(() => SolvingRepository());
  }
}
