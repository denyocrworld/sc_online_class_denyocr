import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../view/transaction_history_completed_view.dart';

class TransactionHistoryCompletedController
    extends State<TransactionHistoryCompletedView> {
  static late TransactionHistoryCompletedController instance;
  late TransactionHistoryCompletedView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List items = [
    {
      "image":
          "https://images.unsplash.com/photo-1485875437342-9b39470b3d95?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8d29tZW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      "title": "Send Money",
      "date": "21 May 2023 . 15:42",
      "amount": 180000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1481214110143-ed630356e1bb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8d29tZW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
      "title": "Top Up",
      "date": "22 May 2023 . 13:42",
      "amount": 200000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1588516903720-8ceb67f9ef84?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHdvbWVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      "title": "Receive Money",
      "date": "22 May 2023 . 16:42",
      "amount": 25000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1560087637-bf797bc7796a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fHdvbWVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      "title": "Send Money",
      "date": "23 May 2023 . 11:11",
      "amount": 89000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzJ8fHdvbWVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      "title": "Receive Money",
      "date": "23 May 2023 . 11:32",
      "amount": 123000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1602442787305-decbd65be507?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fHdvbWVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      "title": "Send Money",
      "date": "24 May 2023 . 12:12",
      "amount": 35000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1494354145959-25cb82edf23d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzd8fHdvbWVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      "title": "Receive Money",
      "date": "24 May 2023 . 12:51",
      "amount": 300000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1561643241-9abf82d76a68?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzh8fHdvbWVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      "title": "Send Money",
      "date": "24 May 2023 . 13:19",
      "amount": 25000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1541101767792-f9b2b1c4f127?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDh8fHdvbWVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      "title": "Send Money",
      "date": "25 May 2023 . 14:42",
      "amount": 25000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1546771139-8ecff7cdabc0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTl8fHdvbWVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      "title": "Receive Money",
      "date": "25 May 2023 . 14:33",
      "amount": 30000,
    }
  ];
}
