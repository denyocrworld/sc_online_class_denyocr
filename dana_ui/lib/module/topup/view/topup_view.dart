import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../controller/topup_controller.dart';

class TopupView extends StatefulWidget {
  const TopupView({Key? key}) : super(key: key);

  Widget build(context, TopupController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
        title: const Text("Let's Top Up"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "How would you like to top up EMoney Balance?",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "MY SAVED CARDS",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[400],
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50.0,
                      height: 30,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.all(0.0),
                          foregroundColor: primaryColor,
                          backgroundColor: const Color(0x0fe6f5ff),
                          side: BorderSide(
                            color: primaryColor,
                          ),
                        ),
                        onPressed: () {},
                        child: Icon(
                          Icons.add,
                          size: 20.0,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "New Card",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Row(
                            children: [
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/128/349/349221.png",
                                height: 20.0,
                                fit: BoxFit.fitHeight,
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/128/11378/11378185.png",
                                height: 20.0,
                                fit: BoxFit.fitHeight,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 24.0,
                      color: Colors.grey[400],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "BANK TRANSFER",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[400],
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    ListView.builder(
                      itemCount: controller.bankTransferList.length,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        var item = controller.bankTransferList[index];
                        return ListTile(
                          leading: Image.network(
                            item["image"],
                            width: 54.0,
                            height: 32.0,
                            fit: BoxFit.fitWidth,
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            size: 24.0,
                            color: Colors.grey[400],
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        "See more banks",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: primaryColor,
                        ),
                      ),
                      subtitle: Text(
                        "Mandiri, CIMB Niaga and other banks.",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey[600],
                        ),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        size: 24.0,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "AGENT",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[400],
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: const Text(
                        "Nearby Agent",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      subtitle: Text(
                        "Find your nearest agent!",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey[600],
                        ),
                      ),
                      trailing: Transform.scale(
                        scale: 0.65,
                        alignment: Alignment.centerRight,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: primaryColor,
                            side: BorderSide(
                              color: primaryColor,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("OPEN MAP"),
                        ),
                      ),
                    ),
                    ListView.builder(
                      itemCount: controller.agentList.length,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        var item = controller.agentList[index];
                        List images = item["images"];

                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 10.0,
                          ),
                          child: Row(
                            children: [
                              ...List.generate(images.length, (index) {
                                var image = images[index];
                                return Container(
                                  margin: const EdgeInsets.only(
                                    right: 6.0,
                                    bottom: 6.0,
                                  ),
                                  child: Image.network(
                                    image,
                                    width: 24.0,
                                    height: 24.0,
                                    fit: BoxFit.fitHeight,
                                  ),
                                );
                              }),
                              const Spacer(),
                              Icon(
                                Icons.chevron_right,
                                size: 24.0,
                                color: Colors.grey[400],
                              ),
                            ],
                          ),
                        );
                        return ListTile(
                          leading: Row(
                            children: List.generate(images.length, (index) {
                              var image = images[index];
                              return Image.network(
                                image,
                                width: 54.0,
                                height: 32.0,
                                fit: BoxFit.cover,
                              );
                            }),
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            size: 24.0,
                            color: Colors.grey[400],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TopupView> createState() => TopupController();
}
