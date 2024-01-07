import 'package:flutter/material.dart';
import 'package:tutorial_responsive_adaptive_state_management_service_locator/core.dart';
import 'package:tutorial_responsive_adaptive_state_management_service_locator/state_util.dart';
import '../controller/pos_controller.dart';

class PosView extends StatefulWidget {
  final MainNavigationController mainNavigationController;
  const PosView({
    Key? key,
    required this.mainNavigationController,
  }) : super(key: key);

  Widget build(context, PosController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pos"),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 20,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  backgroundImage: const NetworkImage(
                    "https://i.ibb.co/xgwkhVb/740922.png",
                  ),
                ),
                title: const Text("Apple"),
                subtitle: const Text("15 USD"),
                trailing: SizedBox(
                  width: 120.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        radius: 12.0,
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 9.0,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        radius: 12.0,
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 9.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 42,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
          ),
          onPressed: () {
            Get.to(CheckoutView(
              mainNavigationController: mainNavigationController,
            ));
          },
          child: const Text("Checkout"),
        ),
      ),
    );
  }

  @override
  State<PosView> createState() => PosController();
}
