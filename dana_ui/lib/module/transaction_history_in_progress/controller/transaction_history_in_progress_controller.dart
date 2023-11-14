
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../view/transaction_history_in_progress_view.dart';

class TransactionHistoryInProgressController extends State<TransactionHistoryInProgressView> {
    static late TransactionHistoryInProgressController instance;
    late TransactionHistoryInProgressView view;

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
        
    