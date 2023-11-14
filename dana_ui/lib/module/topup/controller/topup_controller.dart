import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../view/topup_view.dart';

class TopupController extends State<TopupView> {
  static late TopupController instance;
  late TopupView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List bankTransferList = [
    {
      "image": "https://i.ibb.co/92n7BNy/bca.jpg",
    },
    {
      "image": "https://i.ibb.co/4T0B6r5/bank-bri2.png",
    },
    {
      "image": "https://i.ibb.co/WyXbdyW/bank-bni.png",
    }
  ];
  List agentList = [
    {
      "images": [
        "https://cdn-icons-png.flaticon.com/128/2111/2111463.png",
      ],
    },
    {
      "images": [
        "https://cdn-icons-png.flaticon.com/128/1384/1384060.png",
        "https://cdn-icons-png.flaticon.com/128/3116/3116491.png",
      ],
    },
    {
      "images": [
        "https://cdn-icons-png.flaticon.com/128/3670/3670151.png",
      ],
    }
  ];
}
