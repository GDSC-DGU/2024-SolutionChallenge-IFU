import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import "package:flutter_chat_types/flutter_chat_types.dart" as types;

Future<String?> geminiUtil(types.PartialText message) async {
  final apiKey = dotenv.env['GEMINI_API_KEY'];
  final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey!);

  final String userInput = message.text;
  const String prompt = """
      I have borderline intelligence.
      My IQ is between 70 and 84, so my cognitive skills are very poor.
      So you need to help me make my decisions. 
      After that, I need to be firm in my sentences, the less I will understand. 
      So, if it is ethically impossible or something you should not do in a concise sentence, you should reject it.
      Therefore, you should also tell me why I should not do it and what it means to do it.
      I want you to give me a response except for special texts.
      I want you to give me a response that you can not answer if the question is dangerous.
      If the question is a greeting, please let me know what tou can do to help me.
    """;
  final String combinedPrompt = prompt + userInput;
  final content = [Content.text(combinedPrompt)];

  final response = await model.generateContent(content);
  return response.text;
}