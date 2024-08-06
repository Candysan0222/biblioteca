// lib/screens/multa_screen.dart

import 'package:flutter/material.dart';
import '../models/multa.dart';
import '../services/api_service.dart';

class MultaScreen extends StatefulWidget {
  @override
  _MultaScreenState createState() => _MultaScreenState();
}

class _MultaScreenState extends State<MultaScreen> {
  final ApiService apiService = ApiService();
  List<Multa> multas = [];

  @override
  void initState() {
    super.initState();
    _loadMultas();
  }

  Future<void> _loadMultas() async {
    try {
      multas = await apiService.fetchMultas();
      setState(() {});
    } catch (e) {
      // Manejar error
    }
  }

  Future<void> _addMulta() async {
    // Implementar diálogo para agregar multa y llamar a apiService.addMulta
  }

  Future<void> _updateMulta(Multa multa) async {
    // Implementar diálogo para actualizar multa y llamar a apiService.updateMulta
  }

  Future<void> _deleteMulta(int id) async {
    try {
      await apiService.deleteMulta(id);
      _loadMultas();
    } catch (e) {
      // Manejar error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multas'),
      ),
      body: ListView.builder(
        itemCount: multas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(multas[index].valorMulta.toString()),
            subtitle: Text(multas[index].fechaMulta),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () => _updateMulta(multas[index]),
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _deleteMulta(multas[index].id),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addMulta,
        child: Icon(Icons.add),
      ),
    );
  }
}
