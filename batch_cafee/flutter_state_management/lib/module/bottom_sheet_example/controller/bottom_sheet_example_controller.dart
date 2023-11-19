import 'package:flutter/material.dart';
import 'package:flutter_state_management/core.dart';
import '../view/bottom_sheet_example_view.dart';

class BottomSheetExampleController extends State<BottomSheetExampleView> {
  static late BottomSheetExampleController instance;
  late BottomSheetExampleView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  double visiblePercentage = 0.3;
  updateVisiblePercentage() {
    if (visiblePercentage == 0.3) {
      visiblePercentage = 0.5;
    } else if (visiblePercentage == 0.5) {
      visiblePercentage = 0.7;
    } else {
      visiblePercentage = 0.3;
    }
    setState(() {});
  }
}
