// lib/services/api_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/libro.dart';
import '../models/multa.dart';
import '../models/prestamo.dart';
import '../models/usuario.dart';

class ApiService {
  final String baseUrl = 'http://localhost:8080/api'; // Cambia esto según tu URL base

  // CRUD para Libros
  Future<List<Libro>> fetchLibros() async {
    final response = await http.get(Uri.parse('$baseUrl/libros'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((libro) => Libro.fromMap(libro)).toList();
    } else {
      throw Exception('Error al cargar libros');
    }
  }

  Future<void> addLibro(Libro libro) async {
    final response = await http.post(
      Uri.parse('$baseUrl/libros'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(libro.toMap()),
    );

    if (response.statusCode != 201) {
      throw Exception('Error al agregar libro');
    }
  }

  Future<void> updateLibro(Libro libro) async {
    final response = await http.put(
      Uri.parse('$baseUrl/libros/${libro.id}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(libro.toMap()),
    );

    if (response.statusCode != 200) {
      throw Exception('Error al actualizar libro');
    }
  }

  Future<void> deleteLibro(int id) async {
    final response = await http.delete(Uri.parse('$baseUrl/libros/$id'));

    if (response.statusCode != 200) {
      throw Exception('Error al eliminar libro');
    }
  }

  // CRUD para Multas
  Future<List<Multa>> fetchMultas() async {
    final response = await http.get(Uri.parse('$baseUrl/multas'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((multa) => Multa.fromMap(multa)).toList();
    } else {
      throw Exception('Error al cargar multas');
    }
  }

  Future<void> addMulta(Multa multa) async {
    final response = await http.post(
      Uri.parse('$baseUrl/multas'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(multa.toMap()),
    );

    if (response.statusCode != 201) {
      throw Exception('Error al agregar multa');
    }
  }

  Future<void> updateMulta(Multa multa) async {
    final response = await http.put(
      Uri.parse('$baseUrl/multas/${multa.id}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(multa.toMap()),
    );

    if (response.statusCode != 200) {
      throw Exception('Error al actualizar multa');
    }
  }

  Future<void> deleteMulta(int id) async {
    final response = await http.delete(Uri.parse('$baseUrl/multas/$id'));

    if (response.statusCode != 200) {
      throw Exception('Error al eliminar multa');
    }
  }

  // CRUD para Préstamos
  Future<List<Prestamo>> fetchPrestamos() async {
    final response = await http.get(Uri.parse('$baseUrl/prestamos'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((prestamo) => Prestamo.fromMap(prestamo)).toList();
    } else {
      throw Exception('Error al cargar préstamos');
    }
  }

  Future<void> addPrestamo(Prestamo prestamo) async {
    final response = await http.post(
      Uri.parse('$baseUrl/prestamos'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(prestamo.toMap()),
    );

    if (response.statusCode != 201) {
      throw Exception('Error al agregar préstamo');
    }
  }

  Future<void> updatePrestamo(Prestamo prestamo) async {
    final response = await http.put(
      Uri.parse('$baseUrl/prestamos/${prestamo.id}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(prestamo.toMap()),
    );

    if (response.statusCode != 200) {
      throw Exception('Error al actualizar préstamo');
    }
  }

  Future<void> deletePrestamo(int id) async {
    final response = await http.delete(Uri.parse('$baseUrl/prestamos/$id'));

    if (response.statusCode != 200) {
      throw Exception('Error al eliminar préstamo');
    }
  }

  // CRUD para Usuarios
  Future<List<Usuario>> fetchUsuarios() async {
    final response = await http.get(Uri.parse('$baseUrl/usuarios'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((usuario) => Usuario.fromMap(usuario)).toList();
    } else {
      throw Exception('Error al cargar usuarios');
    }
  }

  Future<void> addUsuario(Usuario usuario) async {
    final response = await http.post(
      Uri.parse('$baseUrl/usuarios'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(usuario.toMap()),
    );

    if (response.statusCode != 201) {
      throw Exception('Error al agregar usuario');
    }
  }

  Future<void> updateUsuario(Usuario usuario) async {
    final response = await http.put(
      Uri.parse('$baseUrl/usuarios/${usuario.id}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(usuario.toMap()),
    );

    if (response.statusCode != 200) {
      throw Exception('Error al actualizar usuario');
    }
  }

  Future<void> deleteUsuario(int id) async {
    final response = await http.delete(Uri.parse('$baseUrl/usuarios/$id'));

    if (response.statusCode != 200) {
      throw Exception('Error al eliminar usuario');
    }
  }
}
