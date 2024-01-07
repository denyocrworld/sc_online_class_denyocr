import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/material.dart';

class ChatDetailView extends StatelessWidget {
  final Map orderItem;
  const ChatDetailView({
    super.key,
    required this.orderItem,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatDetailController>(
      init: ChatDetailController(
        orderItem: orderItem,
      ),
      builder: (controller) {
        controller.displayedDateList.clear();
        return Scaffold(
          appBar: AppBar(
            backgroundColor: disabledColor,
            title: Row(
              children: [
                if (!controller.loading)
                  CircleAvatar(
                    backgroundImage: NetworkImage(AppSession.isVendorOwner
                        ? controller.vendor!["photo_url"]
                        : controller.vendor!["photo_url"]),
                  ),
                const SizedBox(
                  width: 10.0,
                ),
                if (!controller.loading)
                  Text(
                      "${AppSession.isVendorOwner ? orderItem["user_name"] : orderItem["vendor_name"]}"),
              ],
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  controller: controller.scrollController,
                  itemCount: controller.items.length,
                  itemBuilder: (context, index) {
                    var item = controller.items[index];

                    bool isMe = item["sender"] == AppSession.userId;

                    DateTime createdDate = DateTime.parse(item["created_at"]);
                    // var message = "${item["message"]}";

                    var dateString = DateFormat("d MMM y").format(createdDate);
                    var todayDateString =
                        DateFormat("d MMM y").format(DateTime.now());
                    var yesterdayDateString = DateFormat("d MMM y").format(
                        DateTime.now().subtract(const Duration(days: 1)));

                    bool displayGroup = false;

                    if (!controller.displayedDateList.contains(dateString)) {
                      displayGroup = true;
                      controller.displayedDateList.add(dateString);
                    }

                    if (dateString == todayDateString) {
                      dateString = "Today";
                    }

                    if (dateString == yesterdayDateString) {
                      dateString = "Yesterday";
                    }
                    controller.updateReadStatus(item);

                    return Column(
                      children: [
                        if (displayGroup)
                          Card(
                            child: Container(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                dateString,
                                style: const TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                            ),
                          ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                            right: 20.0,
                            top: 4.0,
                            bottom: 4.0,
                          ),
                          child: Row(
                            mainAxisAlignment: isMe
                                ? MainAxisAlignment.end
                                : MainAxisAlignment.start,
                            children: [
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: Get.width - (Get.width / 4),
                                  minWidth: 74,
                                ),
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: isMe
                                      ? const Color(0xffDCF8C8)
                                      : secondaryColor,
                                  borderRadius: mediumRadius,
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      constraints: BoxConstraints(
                                        maxWidth: Get.width / 2.2,
                                      ),
                                      padding: const EdgeInsets.only(
                                        bottom: 14.0,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${item["message"]}",
                                            style: TextStyle(
                                              color: Colors.grey[900],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
                                      child: Wrap(
                                        children: [
                                          Text(
                                            DateFormat("jm").format(
                                                DateTime.parse(
                                                    item["created_at"])),
                                            style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 9.0,
                                            ),
                                          ),
                                          if (isMe)
                                            const SizedBox(
                                              width: 2.0,
                                            ),
                                          if (isMe)
                                            Stack(
                                              children: [
                                                Icon(
                                                  Icons.check,
                                                  color: item["unread"] == false
                                                      ? Colors.blue
                                                      : Colors.grey[600],
                                                  size: 10.0,
                                                ),
                                                if (item["unread"] == false)
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 2.0),
                                                    child: Icon(
                                                      Icons.check,
                                                      color: item["unread"] ==
                                                              false
                                                          ? Colors.blue
                                                          : Colors.grey[600],
                                                      size: 10.0,
                                                    ),
                                                  ),
                                              ],
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                color: disabledColor,
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    const Expanded(
                      child: ExChatField(
                        id: "message",
                        hintText: "Message",
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    InkWell(
                      onTap: () => controller.sendMessage(),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.send,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
