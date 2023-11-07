import 'package:flutter/material.dart';
import 'package:flutter_state_management/core.dart';
import '../controller/http_example_controller.dart';

class HttpExampleView extends StatefulWidget {
  const HttpExampleView({Key? key}) : super(key: key);

  Widget build(context, HttpExampleController controller) {
    controller.view = this;

    if (controller.loading) {
      return const Scaffold(
        body: Column(
          children: [
            Spacer(),
            LinearProgressIndicator(),
          ],
        ),
      );
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("HttpExample"),
        actions: const [],
      ),
      body: ListView.builder(
        itemCount: controller.items.length,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.items[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                backgroundImage: NetworkImage(
                  item["avatar"],
                ),
              ),
              title: Text(item["first_name"]),
              subtitle: Text(item["last_name"]),
            ),
          );
        },
      ),
    );
  }

  @override
  State<HttpExampleView> createState() => HttpExampleController();
}
