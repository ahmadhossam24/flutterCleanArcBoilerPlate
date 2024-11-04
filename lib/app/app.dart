import 'package:flutter/material.dart';
import 'package:flutter_clean_archticture/presentation/home_screen/view/home_screen.dart';

class MyApp extends StatefulWidget {
  MyApp._internal();
  static final MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;
  bool isEng = true;
  void ChangeLang() {
    isEng = !isEng;
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen()
    );
  }
}
