import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/util/animation/animation.dart';
import '../controller/user_course_detail_controller.dart';

class UserCourseDetailView extends StatefulWidget {
  UserCourseDetailView({Key? key}) : super(key: key);

  Widget build(context, UserCourseDetailController controller) {
    controller.view = this;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text("UserCourseDetail"),
        iconTheme: Theme.of(context).appBarTheme.iconTheme!.copyWith(
              color: Colors.white,
            ),
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
              color: Colors.white,
            ),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.36,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://plus.unsplash.com/premium_photo-1664285864903-8f7daf0eb3a9?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -16, 0),
              margin: EdgeInsets.only(
                left: 20.0,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 6.0,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Wrap(
                children: [
                  CircleAvatar(
                    radius: 12.0,
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                  SizedBox(
                    width: 6.0,
                  ),
                  Text(
                    "Deny Ocr",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dart Basic Tutorial",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Course Overview",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  ListView.builder(
                    itemCount: 12,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    padding: EdgeInsets.all(0.0),
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: Color(0xfff0f0f0),
                        child: ListTile(
                          title: Text("Tutorial ${index + 1}"),
                          subtitle: Text("First time setup"),
                          trailing: Container(
                            padding: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
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
                            child: Icon(
                              Icons.chevron_right,
                              color: primaryColor,
                              size: 24.0,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ).amz,
      ),
      bottomNavigationBar: QActionButton(
        label: "Order",
        onPressed: () => controller.orderCourse(),
      ),
    );
  }

  @override
  State<UserCourseDetailView> createState() => UserCourseDetailController();
}
