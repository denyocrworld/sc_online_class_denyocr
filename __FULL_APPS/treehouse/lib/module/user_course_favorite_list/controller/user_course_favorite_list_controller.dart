import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_course_favorite_list_view.dart';

class UserCourseFavoriteListController
    extends State<UserCourseFavoriteListView> {
  static late UserCourseFavoriteListController instance;
  late UserCourseFavoriteListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
