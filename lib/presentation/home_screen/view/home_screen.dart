import 'package:flutter/material.dart';
import 'package:flutter_clean_archticture/app/app.dart';
import 'package:flutter_clean_archticture/presentation/home_screen/resources/string_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(MyApp().isEng ? AppStrings.firstLang : AppStrings.secondLang),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    MyApp().ChangeLang();
                  });
                },
                child: Text(MyApp().isEng ? AppStrings.fChange : AppStrings.sChange),
              )
            ],
          ),
        ),
      );
  }
}