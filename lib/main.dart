import 'package:flutter/material.dart';
import 'pantalles/doble_meitat_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DobleMeitatScreen(),
    );
  }
}
