
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_search_category_list_view.dart';

class UserSearchCategoryListController extends State<UserSearchCategoryListView> {
    static late UserSearchCategoryListController instance;
    late UserSearchCategoryListView view;

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
        
    