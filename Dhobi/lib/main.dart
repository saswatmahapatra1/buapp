import 'package:dhobhi/laundry_home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bennett Care App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LaundryHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
