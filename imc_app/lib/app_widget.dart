import 'package:flutter/material.dart';
import 'package:imc_app/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC Calculator',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: const MyHomePage(title: 'IMC Calculator'),
    );
  }
}
