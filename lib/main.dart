import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screens/home_screen.dart';

void main(List<String> args) {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'mono'),
      home: const Home(),
    );
  }
}
