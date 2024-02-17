import 'package:get/get.dart';
import 'package:ifu/view_models/concept/concept_view_model.dart';

class ConceptBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConceptViewModel());
  }
}