import 'package:flutter/material.dart';
import 'package:text_to_speech/core.dart';

class InterviewConvertationsView extends StatefulWidget {
  const InterviewConvertationsView({Key? key}) : super(key: key);

  Widget build(context, InterviewConvertationsController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("InterviewConvertations"),
        actions: const [],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: controller.convertations.length,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.convertations[index];
          var enWords = item["en"]
              .toString()
              .replaceAll(".", "")
              .replaceAll(",", "")
              .replaceAll("?", "")
              .replaceAll("!", "");
          var enArr = enWords.split(" ");

          var idWords = item["id"]
              .toString()
              .replaceAll(".", "")
              .replaceAll(",", "")
              .replaceAll("?", "")
              .replaceAll("!", "");
          var idArr = idWords.split(" ");

          return InkWell(
            onTap: () {
              TTSService.toSpeech(item["en"]);
            },
            child: Container(
              decoration: BoxDecoration(
                color: index % 2 == 0 ? Colors.grey[300] : Colors.grey[100],
              ),
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${item["from"]}",
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Wrap(
                    children: List.generate(enArr.length, (index) {
                      var word = enArr[index];
                      return InkWell(
                        onTap: () {
                          TTSService.toSpeech(word);
                        },
                        child: Container(
                          color: Colors.green[100],
                          child: Text(
                            "$word ",
                            style: const TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "${item["spell"]}",
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Wrap(
                    children: List.generate(idArr.length, (index) {
                      var word = idArr[index];
                      return InkWell(
                        onTap: () {
                          TTSService.toSpeechID(word);
                        },
                        child: Container(
                          color: Colors.green[100],
                          child: Text(
                            "$word ",
                            style: const TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          TTSService.toSpeech(item["en"]);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(4.0),
                          child: const Column(
                            children: [
                              Icon(
                                Icons.spatial_audio,
                                size: 24.0,
                                color: Colors.blue,
                              ),
                              Text(
                                "EN",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          TTSService.toSpeechID(item["id"]);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(4.0),
                          child: const Column(
                            children: [
                              Icon(
                                Icons.spatial_audio,
                                size: 24.0,
                                color: Colors.red,
                              ),
                              Text(
                                "ID",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  State<InterviewConvertationsView> createState() =>
      InterviewConvertationsController();
}
