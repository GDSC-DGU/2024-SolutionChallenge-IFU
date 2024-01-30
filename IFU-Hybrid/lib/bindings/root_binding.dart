import 'package:get/get.dart';
import 'package:ifu/view_models/root/root_view_model.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RootViewModel());
  }
}