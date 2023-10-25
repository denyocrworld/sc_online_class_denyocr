import 'package:chatify_client/service/auth_service/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:chatify_client/core.dart';
import '../controller/user_list_controller.dart';

class UserListView extends StatefulWidget {
  const UserListView({Key? key}) : super(key: key);

  Widget build(context, UserListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("ID: ${AuthService.id}"),
        actions: [
          InkWell(
            onTap: () => controller.getUsers(),
            child: const Icon(
              Icons.refresh,
              size: 24.0,
            ),
          ),
          IconButton(
            onPressed: () => controller.logout(),
            icon: const Icon(
              Icons.logout,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: controller.users.length,
        padding: const EdgeInsets.all(12.0),
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.users[index];
          if (item["id"] == AuthService.id) return Container();
          return Card(
            child: ListTile(
              title: Text("${item["name"]}"),
              subtitle: Text("${item["email"]}"),
              onTap: () => Get.to(ChatDetailView(
                user: item,
              )),
            ),
          );
        },
      ),
    );
  }

  @override
  State<UserListView> createState() => UserListController();
}
