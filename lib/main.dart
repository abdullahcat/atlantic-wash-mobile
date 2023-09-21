import 'package:atlantic_cw/pages/homepage.dart';
import 'package:atlantic_cw/service/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATLANTIC',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 25,
              color: MyColors.cosmicLatte,
            ),
            color: MyColors.pantoneRed,
            iconTheme: IconThemeData(color: MyColors.cosmicLatte)),
        scaffoldBackgroundColor: MyColors.cosmicLatte,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
