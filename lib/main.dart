import 'package:flutter/material.dart';
import 'package:resmi_tatiller/govde.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resmi Tatiller',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const Govde()
    );
  }
}

