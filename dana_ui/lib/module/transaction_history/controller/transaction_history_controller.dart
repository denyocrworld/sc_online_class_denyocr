import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../view/transaction_history_view.dart';

class TransactionHistoryController extends State<TransactionHistoryView> {
  static late TransactionHistoryController instance;
  late TransactionHistoryView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
