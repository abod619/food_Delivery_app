import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:fooddeliveryapp/pages/bottomnav.dart';
// ignore: unused_import
import 'package:fooddeliveryapp/pages/details.dart';
// ignore: unused_import
import 'package:fooddeliveryapp/pages/home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottomnav()
     
      );
  }
}