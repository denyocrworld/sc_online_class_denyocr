import 'package:code_architecture/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/*
bloc
getx
provider
riverpod
mobx

Software House
- Banyak Project
- Getx, Provider, Riverpod, Mobx

Studi Kasus
---
- Voting?
- Backend Laravel


Vercel
- Postgresql
Database Hosting
- XXX

VPS
- 

Supabase
AppWrite
---
Realm

*/

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<LoginController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App with Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Count:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '${counter.count}',
              style: const TextStyle(fontSize: 48),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counter.increment();
                  },
                  child: const Text('Increment'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    counter.decrement();
                  },
                  child: const Text('Decrement'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
