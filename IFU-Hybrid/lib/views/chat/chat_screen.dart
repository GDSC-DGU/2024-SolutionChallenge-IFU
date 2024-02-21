import 'package:flutter/material.dart';
import 'package:ifu/view_models/chat/chat_view_model.dart';
import 'package:ifu/views/base/base_screen.dart';
import 'package:ifu/views/chat/widgets/chat_ui_widget.dart';
import 'package:ifu/widgets/base/default_appbar.dart';

class ChatScreen extends BaseScreen<ChatViewModel> {
  const ChatScreen({super.key});

  @override
  Widget buildBody(BuildContext context) {
    return const ChatWidget();
  }

  @override
  PreferredSize buildAppBar(BuildContext context) {
    return const PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: DefaultAppBar(title: 'Chat'),
    );
  }
}