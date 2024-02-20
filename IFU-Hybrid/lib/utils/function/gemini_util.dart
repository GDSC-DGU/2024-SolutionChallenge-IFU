import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import "package:flutter_chat_types/flutter_chat_types.dart" as types;

Future<String?> geminiUtil(types.PartialText message) async {
  final apiKey = dotenv.env['GEMINI_API_KEY'];
  final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey!);

  final String userInput = message.text;
  const String prompt = 'I have borderline intelligence. My IQ is between 70 and 84, so my cognitive skills are very poor. So you need to help me make my decisions. After taht, I need to be firm in my sentences, the less I will understand. So, if it is ethically impossible or something you should not do in a concise sentense, you should reject it.';
  final String combinedPrompt = prompt + userInput;
  final content = [Content.text(combinedPrompt)];

  final response = await model.generateContent(content);
  return response.text;
}