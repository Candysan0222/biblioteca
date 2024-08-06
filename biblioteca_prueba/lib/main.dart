import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(BibliotecaPruebaApp());
}

class BibliotecaPruebaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biblioteca Prueba',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
