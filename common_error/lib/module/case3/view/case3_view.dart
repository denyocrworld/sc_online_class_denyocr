import 'package:flutter/material.dart';
import 'package:common_error/core.dart';
import '../controller/case3_controller.dart';

class Case3View extends StatefulWidget {
  const Case3View({Key? key}) : super(key: key);

  Widget build(context, Case3Controller controller) {
    controller.view = this;

    /*
    Exception yang terjadi:
    ══╡ EXCEPTION CAUGHT BY RENDERING LIBRARY ╞═════════════════════════════════════════════════════════
    The following assertion was thrown during performLayout():
    RenderFlex children have non-zero flex but incoming height constraints are unbounded.
    When a column is in a parent that does not provide a finite height constraint, for example if it is
    in a vertical scrollable, it will try to shrink-wrap its children along the vertical axis. Setting a
    flex on a child (e.g. using Expanded) indicates that the child is to expand to fill the remaining
    space in the vertical direction.
    These two directives are mutually exclusive. If a parent is to shrink-wrap its child, the child
    cannot simultaneously expand to fit its parent.
    Consider setting mainAxisSize to MainAxisSize.min and using FlexFit.loose fits for the flexible
    children (using Flexible rather than Expanded). This will allow the flexible children to size
    themselves to less than the infinite remaining space they would otherwise be forced to take, and
    then will cause the RenderFlex to shrink-wrap the children rather than expanding to fit the maximum
    constraints provided by the parent.

    Problem:
    Kita menggunakan Spacer pada Scrollable Widget yaitu SingleChildScrollView
    */

    return Scaffold(
      appBar: AppBar(
        title: const Text("Case3"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            //Spacer/Expanded di dalam Row bekerja
            //Karena axis-nya berbeda
            //SingleChildScrollView => axis.vertical
            //Row => axis.horizontal

            const Row(
              children: [
                Icon(
                  Icons.developer_board,
                  size: 24.0,
                ),
                Spacer(),
                Text(
                  "text",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
            ),
            const Spacer(),
            Container(
              height: 1000,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<Case3View> createState() => Case3Controller();
}
