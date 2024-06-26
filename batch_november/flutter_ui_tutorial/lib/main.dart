import 'package:hyper_ui/contoh.dart';
import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/tutorial.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capek Ngoding',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      home: ContohView(),
      builder: (context, child) => DebugView(
        context: context,
        child: child,
        visible: true,
      ),
    );
  }
}
