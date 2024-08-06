// lib/screens/usuario_screen.dart

import 'package:flutter/material.dart';
import '../models/usuario.dart';
import '../services/api_service.dart';

class UsuarioScreen extends StatefulWidget {
  @override
  _UsuarioScreenState createState() => _UsuarioScreenState();
}

class _UsuarioScreenState extends State<UsuarioScreen> {
  final ApiService apiService = ApiService();
  List<Usuario> usuarios = [];

  @override
  void initState() {
    super.initState();
    _loadUsuarios();
  }

  Future<void> _loadUsuarios() async {
    try {
      usuarios = await apiService.fetchUsuarios();
      setState(() {});
    } catch (e) {
      // Manejar error
    }
  }

  Future<void> _addUsuario() async {
    // Implementar diálogo para agregar usuario y llamar a apiService.addUsuario
  }

  Future<void> _updateUsuario(Usuario usuario) async {
    // Implementar diálogo para actualizar usuario y llamar a apiService.updateUsuario
  }

  Future<void> _deleteUsuario(int id) async {
    try {
      await apiService.deleteUsuario(id);
      _loadUsuarios();
    } catch (e) {
      // Manejar error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuarios'),
      ),
      body: ListView.builder(
        itemCount: usuarios.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(usuarios[index].nombre),
            subtitle: Text(usuarios[index].correo),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () => _updateUsuario(usuarios[index]),
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _deleteUsuario(usuarios[index].id),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addUsuario,
        child: Icon(Icons.add),
      ),
    );
  }
}
