import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import "package:flutter_chat_types/flutter_chat_types.dart" as types;
import 'package:flutter_tts/flutter_tts.dart';
import 'package:ifu/utils/function/gemini_util.dart';
import 'package:uuid/uuid.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  final List<types.Message> _messages = [];

  final _user = const types.User(
    id: '1',
  );

  final _bot = const types.User(
    id: '2',
  );

  final FlutterTts flutterTts = FlutterTts();

  @override
  void initState() {
    super.initState();
    initTts();
  }

  Future<void> initTts() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.setSharedInstance(true);
    await flutterTts.setIosAudioCategory(IosTextToSpeechAudioCategory.playback,
        [
          IosTextToSpeechAudioCategoryOptions.allowBluetooth,
          IosTextToSpeechAudioCategoryOptions.allowBluetoothA2DP,
          IosTextToSpeechAudioCategoryOptions.mixWithOthers,
          IosTextToSpeechAudioCategoryOptions.defaultToSpeaker
        ],
        IosTextToSpeechAudioMode.defaultMode
    );
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handlePreviewDataFetched(types.TextMessage message,
      types.PreviewData previewData,) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = (_messages[index] as types.TextMessage).copyWith(
      previewData: previewData,
    );

    setState(() {
      _messages[index] = updatedMessage;
    });
  }

  Future<void> _handleResponse(types.PartialText message) async {
    final text = await geminiUtil(message);
    final botMessage = types.TextMessage(
      author: _bot,
      createdAt: DateTime
        .now()
        .millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: text!,
    );

    _addMessage(botMessage);
    await flutterTts.speak(text);
  }

  void _handleSendPressed(types.PartialText message) async {

    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime
          .now()
          .millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    _addMessage(textMessage);
    await _handleResponse(message);
  }

  void _handleMessageTap(BuildContext _, types.Message message) async {
    if (message is types.TextMessage) {
      await flutterTts.speak(message.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Chat(
        theme: const DefaultChatTheme(
          primaryColor: Color(0xFF88B4DF),
          secondaryColor: Color(0xFFF2F4FA),
          backgroundColor: Color(0xFFE7EBF5),
          inputBackgroundColor: Color(0xFFFFFFFF),
          inputTextColor: Color(0xFF000000)
        ),
        messages: _messages,
        onMessageDoubleTap: _handleMessageTap,
        onPreviewDataFetched: _handlePreviewDataFetched,
        onSendPressed: _handleSendPressed,
        user: _user,
      ),
    );
  }
}