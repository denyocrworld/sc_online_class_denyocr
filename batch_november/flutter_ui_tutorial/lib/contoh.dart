import 'dart:math';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/animation_util.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/tutorial.dart';

//StatefulWidget
//1. Ketika ingin mengelola state-nya
//2. Ketika kita butuh lifecycle dari Widget-nya

// Saya ingin menjalankan kode untuk mengambil data product,
// Sebelum halamannya dibuka
//

class ContohView extends StatefulWidget {
  ContohView({Key? key}) : super(key: key);

  @override
  State<ContohView> createState() => _ContohViewState();
}

class _ContohViewState extends State<ContohView> {
  int counter = 0;
  updateCounter() {
    counter++;
    print(counter);
    setState(() {}); //direbuild | direfresh
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(_) {
    super.didUpdateWidget(_);
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /*
    - Navigasi
    - Dialog, Snackbar
    - Ngambil ukuran device
    - Membuka Halaman yang sedang dibuka saat ini
    */

    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [
          Icon(
            Icons.developer_board,
            size: 24.0,
          ),
          Icon(
            Icons.developer_board,
            size: 24.0,
          ),
        ],
      ),
      //list_builder
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Badge(
              label: Text(
                "4",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              offset: Offset(8, -8),
              child: Icon(Icons.notifications),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 46,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
          ),
          onPressed: () {},
          child: Text("Save"),
        ),
      ),
      // bottomNavigationBar: Container(
      //   padding: EdgeInsets.all(20.0),
      //   child: Row(
      //     children: [
      //       Expanded(
      //         child: Text(
      //           "Total",
      //           style: TextStyle(
      //             fontSize: 20.0,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       ),
      //       Text(
      //         "15000",
      //         style: TextStyle(
      //           fontSize: 20.0,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
