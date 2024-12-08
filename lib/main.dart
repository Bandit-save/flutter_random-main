import 'package:flutter/material.dart';
//import 'package:flutter_random/random_page.dart';
import 'package:flutter_random/work_week3_random.dart';
//import 'package:flutter_random/random_page.dart';
//import 'package:flutter_random/third_page.dart';


void main() => runApp(const MainApp());


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Number Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WorkRandomPage(),
    );
  }
}
