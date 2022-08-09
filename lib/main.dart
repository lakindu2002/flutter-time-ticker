import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = 'Ticker Application';
    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(title),
            ),
            body: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Hi, I\'m Lakindu Hewawasam',
                ),
                Text(
                  'I\'m Learning Flutter',
                ),
              ],
            ))));
  }
}
