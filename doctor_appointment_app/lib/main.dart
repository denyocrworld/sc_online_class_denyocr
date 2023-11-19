import 'package:doctor_appointment_app/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DummyApi dummyApi = MainDummyApi();
  await MainSetup.setup(
    dummyApi: dummyApi,
  );
  await FirebaseAuth.instance.wait();

  startApp();
}

void startApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    theme: ThemeData().getCustomTheme(
      customColorSet: colorPalettes[0],
    ),
    defaultTransition: Transition.fade,
    home: const AppSelector(),
    builder: (context, child) {
      return Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              child!,
              Positioned(
                right: 0,
                bottom: 100,
                child: InkWell(
                  onTap: () async => Get.off(const AppSelector()),
                  child: const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.developer_board,
                      size: 24.0,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  ));
}

class AppSelector extends StatelessWidget {
  const AppSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 42.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => startAppByType(MainDummyApi()),
                child: const Text("Barber Shop Rental"),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 42.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => startAppByType(CarRentalAppDummyApi()),
                child: const Text("Car Rental"),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 42.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => startAppByType(DoctorAppointmentAppDummyApi()),
                child: const Text("Doctor Appointment"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
