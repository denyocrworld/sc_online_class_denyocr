import 'package:flutter/material.dart';
import 'package:flutter_layout/core.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        bool isTablet = MediaQuery.of(context).size.width < 1100 &&
            MediaQuery.of(context).size.width >= 850;
        bool isDesktop = MediaQuery.of(context).size.width >= 1100;
        bool isMobile = MediaQuery.of(context).size.width < 850;

        var fontSize = 0.0;
        if (isMobile) {
          fontSize = MediaQuery.of(context).size.width * 0.3;
        } else if (isTablet) {
          fontSize = MediaQuery.of(context).size.width * 0.2;
        } else if (isDesktop) {
          fontSize = MediaQuery.of(context).size.width * 0.1;
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text("Dashboard"),
            actions: const [],
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                          //ukuran yang berbeda tergantung ukuran device-nya
                          fontSize: fontSize,
                          // fontSize: 150.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Hello",
                    style: TextStyle(
                      //ukuran yang berbeda tergantung ukuran device-nya
                      fontSize: MediaQuery.of(context).size.width * 0.3,
                      // fontSize: 150.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
        if (isDesktop) {
          return Scaffold(
            body: Container(
              color: Colors.red,
              child: const Center(
                child: Text(
                  "Desktop Mode",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }

        if (isTablet) {
          return Scaffold(
            body: Container(
              color: Colors.green,
              child: const Center(
                child: Text(
                  "Tablet Mode",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }

        //mobile
        return Scaffold(
          body: Container(
            color: Colors.purple,
            child: const Center(
              child: Text(
                "Mobile Mode",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(
                      //ukuran yang berbeda tergantung ukuran device-nya
                      fontSize: MediaQuery.of(context).size.width * 0.3,
                      // fontSize: 150.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.developer_board,
                size: 24.0,
              ),
              const Icon(
                Icons.developer_board,
                size: 32.0,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: const Icon(
                  Icons.developer_board,
                  size: 100.0,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                      ),
                      child: const Icon(
                        Icons.developer_board,
                        size: 100.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                      ),
                      child: const FittedBox(
                        child: Icon(
                          Icons.developer_board,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                      ),
                      child: const FittedBox(
                        child: Text(
                          "ABC",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
