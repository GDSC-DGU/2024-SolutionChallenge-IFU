import 'package:get/get.dart';
import 'package:ifu/view_models/solving/solving_view_model.dart';

class SolvingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SolvingViewModel());
  }
}