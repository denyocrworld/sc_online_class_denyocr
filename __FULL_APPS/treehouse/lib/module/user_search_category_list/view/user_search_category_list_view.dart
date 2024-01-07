import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_search_category_list_controller.dart';
import 'package:flutter_animate/flutter_animate.dart';

class UserSearchCategoryListView extends StatefulWidget {
  const UserSearchCategoryListView({Key? key}) : super(key: key);

  Widget build(context, UserSearchCategoryListController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserSearchCategoryList"),
        actions: const [],
      ),
      body: Padding(
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
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Builder(builder: (context) {
                List categories = [
                  {
                    "label": "Dart basic",
                    "cover_image":
                        "https://images.unsplash.com/photo-1546430498-05c7b929830e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  },
                  {
                    "label": "Figma basic",
                    "cover_image":
                        "https://images.unsplash.com/photo-1583232705433-c2fee07be069?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  },
                  {
                    "label": "Construct2 basic",
                    "cover_image":
                        "https://images.unsplash.com/photo-1568585219057-9206080e6c74?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  },
                  {
                    "label": "Coding for kids",
                    "cover_image":
                        "https://images.unsplash.com/photo-1495654794940-1c0cd2aeedc1?q=80&w=2028&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  },
                  {
                    "label": "Ms Excell basic",
                    "cover_image":
                        "https://images.unsplash.com/photo-1516321497487-e288fb19713f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  },
                  {
                    "label": "Wordpress Basic",
                    "cover_image":
                        "https://images.unsplash.com/photo-1588912914078-2fe5224fd8b8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  },
                  {
                    "label": "Ms Excell basic",
                    "cover_image":
                        "https://images.unsplash.com/photo-1516321497487-e288fb19713f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  },
                  {
                    "label": "Wordpress Basic",
                    "cover_image":
                        "https://images.unsplash.com/photo-1588912914078-2fe5224fd8b8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  }
                ];
                
                return GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.0 / 1.1,
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                  ),
                  itemCount: categories.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = categories[index];
                    return InkWell(
                      onTap: () {
                        Get.back();
                        UserMainNavigationController.instance.updateIndex(1);
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      item["cover_image"],
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
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              item["label"],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }).animate().scale().fadeIn(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<UserSearchCategoryListView> createState() =>
      UserSearchCategoryListController();
}
