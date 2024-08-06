// lib/screens/prestamo_screen.dart

import 'package:flutter/material.dart';
import '../models/prestamo.dart';
import '../services/api_service.dart';

class PrestamoScreen extends StatefulWidget {
  @override
  _PrestamoScreenState createState() => _PrestamoScreenState();
}

class _PrestamoScreenState extends State<PrestamoScreen> {
  final ApiService apiService = ApiService();
  List<Prestamo> prestamos = [];

  @override
  void initState() {
    super.initState();
    _loadPrestamos();
  }

  Future<void> _loadPrestamos() async {
    try {
      prestamos = await apiService.fetchPrestamos();
      setState(() {});
    } catch (e) {
      // Manejar error
    }
  }

  Future<void> _addPrestamo() async {
    // Implementar diálogo para agregar préstamo y llamar a apiService.addPrestamo
  }

  Future<void> _updatePrestamo(Prestamo prestamo) async {
    // Implementar diálogo para actualizar préstamo y llamar a apiService.updatePrestamo
  }

  Future<void> _deletePrestamo(int id) async {
    try {
      await apiService.deletePrestamo(id);
      _loadPrestamos();
    } catch (e) {
      // Manejar error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Préstamos'),
      ),
      body: ListView.builder(
        itemCount: prestamos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(prestamos[index].fechaPrestamo),
            subtitle: Text(prestamos[index].fechaDevolucion),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () => _updatePrestamo(prestamos[index]),
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _deletePrestamo(prestamos[index].id),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addPrestamo,
        child: Icon(Icons.add),
      ),
    );
  }
}
