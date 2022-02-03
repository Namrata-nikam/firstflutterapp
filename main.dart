import 'package:flutter/material.dart';
import 'firatpagebmi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFFBA68C8),
          scaffoldBackgroundColor: Color(0xFFCE93D8)),
      home: inputPagestate(),
    );
  }
}
