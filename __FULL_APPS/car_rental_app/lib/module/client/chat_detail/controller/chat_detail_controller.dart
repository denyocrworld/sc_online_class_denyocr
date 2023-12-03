import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';

class ChatDetailController extends GetxController {
  final Map orderItem;
  ChatDetailController({
    required this.orderItem,
  });

  List items = [];
  String? chatDocumentId;
  CollectionReference? chatRef;
  Stream<QuerySnapshot>? chatSnapshot;
  ScrollController? scrollController;
  List displayedDateList = [];

  var loading = true;
  Map? vendor;
  Map? user;

  @override
  void onReady() {
    super.onReady();
    if (scrollController!.hasClients) {
      scrollController!.jumpTo(
        scrollController!.position.maxScrollExtent,
      );
    }
  }

  updateReadStatus(Map<String, dynamic> item) async {
    bool isNotMe = item["sender"] != AppSession.userId;

    if (isNotMe) {
      print(AppSession.isVendorOwner ? "Vendor" : "Client");
      print("Update Unread Status");

      if (item["unread"] == true) {
        await chatRef!.doc(item["id"]).update({
          "unread": false,
        });

        await FirebaseFirestore.instance
            .collection(collection.userDataCollection)
            .doc(AppSession.userId)
            .update(
          {
            "unread_message_count": FieldValue.increment(-1),
          },
        );

        //update chat list
        var userChatListRef = FirebaseFirestore.instance
            .collection(collection.chatListCollection)
            .doc(orderItem["user_id"])
            .collection("chat_with")
            .doc(orderItem["vendor_id"]);

        var vendorChatListRef = FirebaseFirestore.instance
            .collection(collection.chatListCollection)
            .doc(orderItem["vendor_id"])
            .collection("chat_with")
            .doc(orderItem["user_id"]);

        if (AppSession.isVendorOwner) {
          await vendorChatListRef.update(
            {
              "updated_at": Timestamp.now(),
              "unread_message_count": FieldValue.increment(-1),
            },
          );
        } else {
          await userChatListRef.update(
            {
              "updated_at": Timestamp.now(),
              "unread_message_count": FieldValue.increment(-1),
            },
          );
        }
      }
    }
  }

  @override
  void onInit() async {
    super.onInit();
    scrollController = ScrollController();
    chatDocumentId = "${orderItem["user_id"]}-${orderItem["vendor_id"]}";

    chatRef = FirebaseFirestore.instance
        .collection(collection.chatCollection)
        .doc(
          chatDocumentId,
        )
        .collection("messages");

    chatSnapshot = chatRef!
        .orderBy(
          "created_at",
          descending: false,
        )
        .limit(100)
        .snapshots(
          includeMetadataChanges: true,
        );

    chatSnapshot!.listen((snapshot) async {
      for (var i = 0; i < snapshot.docChanges.length; i++) {
        var event = snapshot.docChanges[i];
        if (event.type == DocumentChangeType.added) {
          print(AppSession.isVendorOwner ? "Vendor" : "Client");
          print("Added");
          print(event.doc.id);
          print(event.doc.data());

          var item = event.doc.data() as Map<String, dynamic>;
          item["id"] = event.doc.id;
          item["created_at"] = item["created_at"].toDate().toString();
          items.add(item);

          if (scrollController!.hasClients) {
            Future.delayed(const Duration(milliseconds: 250), () {
              scrollController!.animateTo(
                scrollController!.position.maxScrollExtent,
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            });
          }

          update();
        } else if (event.type == DocumentChangeType.modified) {
          print(AppSession.isVendorOwner ? "Vendor" : "Client");
          print("Modified");
          print(event.doc.id);
          print(event.doc.data());

          // var modified = event.doc.data() as Map<String,dynamic>;
          for (var i = 0; i < items.length; i++) {
            var item = items[i];
            if (item["id"] == event.doc.id) {
              item["unread"] = false;
              items[i]["unread"] = false;

              print("Update this document unread status:");
              print(item);
            }
          }

          update();
        } else if (event.type == DocumentChangeType.removed) {
          print("removed");
          print(event.doc.data());
        }
      }
    });

    loadData();
  }

  sendMessage() async {
    print("User ID: ${orderItem["user_id"]}");
    print("Vendor ID: ${orderItem["vendor_id"]}");
    var test = await chatRef!.get();
    if (test.docs.isEmpty) {
      print("Chat Ref is Empty");
    }

    String message = Input.get("message");
    exChatFieldInstance["message"]!.setValue("");
    if (message.isEmpty) return;

    // showLoading();
    await chatRef!.add({
      "sender": AppSession.userId,
      "message": message,
      "unread": true,
      "created_at": Timestamp.now(),
    });

    var receiverId = vendor!["id"];
    if (AppSession.isVendorOwner) {
      receiverId = orderItem["user_id"];
    }

    var userDataRef = FirebaseFirestore.instance
        .collection(collection.userDataCollection)
        .doc(receiverId);
    var d = await userDataRef.get();

    var value = {
      "unread_message_count": FieldValue.increment(1),
    };
    if (d.exists) {
      userDataRef.update(value);
    } else {
      userDataRef.set(value);
    }

    var userChatListRef = FirebaseFirestore.instance
        .collection(collection.chatListCollection)
        .doc(orderItem["user_id"])
        .collection("chat_with")
        .doc(orderItem["vendor_id"]);

    var vendorChatListRef = FirebaseFirestore.instance
        .collection(collection.chatListCollection)
        .doc(orderItem["vendor_id"])
        .collection("chat_with")
        .doc(orderItem["user_id"]);

    var userChatListSnapshot = await userChatListRef.get();
    var vendorChatListSnapshot = await vendorChatListRef.get();

    if (!userChatListSnapshot.exists) {
      await userChatListRef.set(
        {
          "user_id": orderItem["user_id"],
          "vendor_id": orderItem["vendor_id"],
          "created_at": Timestamp.now(),
          "unread_message_count": 0,
        },
      );
    }

    if (!vendorChatListSnapshot.exists) {
      await vendorChatListRef.set(
        {
          "user_id": orderItem["user_id"],
          "vendor_id": orderItem["vendor_id"],
          "created_at": Timestamp.now(),
          "unread_message_count": 0,
        },
      );
    }

    await userChatListRef.update(
      {
        "updated_at": Timestamp.now(),
        "unread_message_count":
            FieldValue.increment(AppSession.isVendorOwner ? 1 : 0),
      },
    );

    await vendorChatListRef.update(
      {
        "updated_at": Timestamp.now(),
        "unread_message_count":
            FieldValue.increment(AppSession.isVendorOwner ? 0 : 1),
      },
    );
  }

  loadData() async {
    await loadVendor();
    await loadUser();
    print("loadData Done >>>>>");
    loading = false;
    update();
  }

  loadVendor() async {
    var vendorId = orderItem["vendor_id"];
    var snapshot = await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .doc(vendorId)
        .get();

    vendor = snapshot.data() as Map<String, dynamic>;
  }

  loadUser() async {
    var userId = orderItem["user_id"];
    var snapshot = await FirebaseFirestore.instance
        .collection(collection.userDataCollection)
        .doc("$userId")
        .get();

    user = snapshot.data()!["profile"];
  }
}
