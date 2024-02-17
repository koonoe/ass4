import 'package:ass4/Page/Side.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 150, 144, 144)),
          useMaterial3: true,
          scaffoldBackgroundColor: Color.fromARGB(255, 70, 61, 192)),
      home: const Side(),
    );
  }
}
