import 'package:get/get.dart';
import 'package:ifu/view_models/chat/chat_view_model.dart';

class ChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatViewModel());
  }
}