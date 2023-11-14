import 'package:flutter/material.dart';
import 'package:flutter_state_management/core.dart';
import '../controller/tutorial_controller.dart';

class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);

  Widget build(context, TutorialController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tutorial"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Builder(builder: (context) {
                List items = [
                  {
                    "label": "Counter",
                    "view": const CounterView(),
                  },
                  {
                    "label": "Timer",
                    "view": const TimerExampleView(),
                  },
                  {
                    "label": "ValueNotifier",
                    "view": const ValuenotifierExampleView(),
                  },
                  {
                    "label": "Stream",
                    "view": const StreamExampleView(),
                  },
                  {
                    "label": "BottomSheet",
                    "view": const BottomSheetExampleView(),
                  },
                  {
                    "label": "Http example",
                    "view": const HttpExampleView(),
                  }
                ];
                return GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.0,
                    crossAxisCount: 2,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 6,
                  ),
                  itemCount: items.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = items[index];
                    return InkWell(
                      onTap: () => Get.to(item["view"]),
                      child: Container(
                        color: Colors.red[300],
                        child: Center(
                          child: Text(
                            item["label"],
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}
