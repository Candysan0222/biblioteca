// lib/screens/libro_screen.dart

import 'package:flutter/material.dart';
import '../models/libro.dart';
import '../services/api_service.dart';

class LibroScreen extends StatefulWidget {
  const LibroScreen({Key? key}) : super(key: key);
  @override
  _LibroScreenState createState() => _LibroScreenState();
}

class _LibroScreenState extends State<LibroScreen> {
  final ApiService apiService = ApiService();
  List<Libro> libros = [];

  @override
  void initState() {
    super.initState();
    _loadLibros();
  }

  Future<void> _loadLibros() async {
    try {
      libros = await apiService.fetchLibros();
      setState(() {});
    } catch (e) {
      // Manejar error
    }
  }

  Future<void> _addLibro() async {
    // Implementar diálogo para agregar libro y llamar a apiService.addLibro
  }

  Future<void> _updateLibro(Libro libro) async {
    // Implementar diálogo para actualizar libro y llamar a apiService.updateLibro
  }

  Future<void> _deleteLibro(int id) async {
    try {
      await apiService.deleteLibro(id);
      _loadLibros();
    } catch (e) {
      // Manejar error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Libros'),
      ),
      body: ListView.builder(
        itemCount: libros.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(libros[index].titulo),
            subtitle: Text(libros[index].autor),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () => _updateLibro(libros[index]),
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _deleteLibro(libros[index].id),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addLibro,
        child: Icon(Icons.add),
      ),
    );
  }
}
