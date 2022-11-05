import 'package:flutter/material.dart';

import 'input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yasam Beklentisi',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.lightBlue[300],
        primaryColor: Colors.lightBlue[300],
      ),
      debugShowCheckedModeBanner: false,
      home: const YasamBeklentisi(),
    );
  }
}
