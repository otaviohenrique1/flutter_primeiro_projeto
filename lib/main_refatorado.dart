import 'package:flutter/material.dart';

import 'initial_screen.dart';

class MyAppRefatorado extends StatefulWidget {
  const MyAppRefatorado({super.key});

  @override
  State<MyAppRefatorado> createState() => _MyAppRefatoradoState();
}

class _MyAppRefatoradoState extends State<MyAppRefatorado> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InitialScreen(),
    );
  }
}
