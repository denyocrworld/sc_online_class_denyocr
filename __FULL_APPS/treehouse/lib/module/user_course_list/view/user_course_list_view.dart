import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/util/animation/animation.dart';
import '../controller/user_course_list_controller.dart';

class UserCourseListView extends StatefulWidget {
  const UserCourseListView({Key? key}) : super(key: key);

  Widget build(context, UserCourseListController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Course List"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: Colors.grey[300]!,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.blueGrey[900],
                ),
                suffixIcon: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.sort,
                    color: Colors.blueGrey[900],
                  ),
                ),
              ),
            ).amr,
            const SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () => Get.to(UserCourseDetailView()),
                    child: Container(
                      margin: const EdgeInsets.only(
                        bottom: 12.0,
                      ),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Color(0xfff0f0f0),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 160.0,
                            width: 120.0,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1514369118554-e20d93546b30?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  8.0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Course name",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(4.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            8.0,
                                          ),
                                        ),
                                        border: Border.all(
                                          width: 1.0,
                                          color: Colors.grey[900]!,
                                        ),
                                      ),
                                      child: const Icon(
                                        Icons.bookmark_outline,
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Category",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 4,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "\$120",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).amx(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<UserCourseListView> createState() => UserCourseListController();
}
