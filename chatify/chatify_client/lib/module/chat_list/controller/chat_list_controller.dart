
import 'package:flutter/material.dart';
import 'package:chatify_client/core.dart';
import '../view/chat_list_view.dart';

class ChatListController extends State<ChatListView> {
    static late ChatListController instance;
    late ChatListView view;

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
        
    