import 'package:flutter/material.dart';
import 'package:text_to_speech/core.dart';
import '../controller/word_dictionaries_controller.dart';

class WordDictionariesView extends StatefulWidget {
  const WordDictionariesView({Key? key}) : super(key: key);

  Widget build(context, WordDictionariesController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("WordDictionaries"),
        actions: [
          IconButton(
            onPressed: () => controller.play(),
            icon: const Icon(
              Icons.play_arrow,
              size: 24.0,
            ),
          ),
          IconButton(
            onPressed: () => controller.stop(),
            icon: const Icon(
              Icons.stop,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: controller.words.length,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.words[index];
          bool selected = controller.currentIndex == index;
          return Card(
            color: selected ? Colors.grey[900] : Colors.white,
            child: ListTile(
              title: Text(
                item,
                style: TextStyle(
                  color: selected ? Colors.white : Colors.grey[900],
                ),
              ),
              // subtitle: const Text("-"),
              onTap: () => controller.convertTextToSpeech(item),
            ),
          );
        },
      ),
    );
  }

  @override
  State<WordDictionariesView> createState() => WordDictionariesController();
}
