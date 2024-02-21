import 'package:get/get.dart';
import 'package:ifu/bindings/chat_binding.dart';
import 'package:ifu/bindings/concept_binding.dart';
import 'package:ifu/bindings/home_binding.dart';
import 'package:ifu/bindings/solving_binding.dart';
import 'package:ifu/view_models/root/root_view_model.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    // Root ViewModel
    Get.put(RootViewModel());

    // ViewModels
    HomeBinding().dependencies();
    ConceptBinding().dependencies();
    SolvingBinding().dependencies();
    ChatBinding().dependencies();
  }
}