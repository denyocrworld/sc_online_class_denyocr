import 'package:contoh_service_dan_model/core.dart';
import 'package:contoh_service_dan_model/state_util.dart';
import 'package:flutter/material.dart';

void main() async {
  //inialisasi shared_preferences
  //DB.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const ProductListView(),
    );
  }
}

// Laravel Basic 2
// -~ buat API
// -~ Token ga kesimpen
// 