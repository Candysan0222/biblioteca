// lib/screens/drawer.dart

import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'libro_screen.dart';
import 'multa_screen.dart';
import 'prestamo_screen.dart';
import 'usuario_screen.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Menú de Navegación'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Inicio'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Libros'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LibroScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Multas'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MultaScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Préstamos'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => PrestamoScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Usuarios'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => UsuarioScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
