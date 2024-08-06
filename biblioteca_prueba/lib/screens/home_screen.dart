import 'package:flutter/material.dart';
import 'drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biblioteca Prueba'),
      ),
      drawer: DrawerWidget(),
      body: Center(
        child: Text('Bienvenido a Biblioteca Prueba!'),
      ),
    );
  }
}
