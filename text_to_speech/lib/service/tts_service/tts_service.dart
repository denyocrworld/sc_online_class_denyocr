import 'package:flutter_tts/flutter_tts.dart';

class TTSService {
  static Future toSpeech(
    String word,
  ) async {
    FlutterTts flutterTts = FlutterTts();
    // await flutterTts.setLanguage("en-US");
    await flutterTts.setLanguage("en-GB");
    await flutterTts.awaitSpeakCompletion(true);
    await flutterTts.speak(
      word,
    );
  }

  static Future toSpeechID(
    String word,
  ) async {
    FlutterTts flutterTts = FlutterTts();
    await flutterTts.setLanguage("id-ID");
    await flutterTts.awaitSpeakCompletion(true);
    await flutterTts.speak(
      word,
    );
  }
}
