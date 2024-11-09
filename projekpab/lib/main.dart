import 'package:flutter/material.dart';
import 'package:projekpab/screens/login.dart';
import 'package:projekpab/screens/regiter.dart';
import 'package:projekpab/screens/tampilan_home.dart';
import 'package:projekpab/screens/tampilan_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Review Novel',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: LoginScreens(),
      // home: RegissterScreens(),
      // home: TampilanHome(),
      home: TampilanDetail(),
    );
  }
}
