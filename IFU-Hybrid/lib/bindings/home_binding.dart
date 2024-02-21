import 'package:get/get.dart';
import 'package:ifu/view_models/home/home_view_model.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
   Get.lazyPut(() => HomeViewModel());
 }
}