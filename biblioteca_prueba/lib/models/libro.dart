// lib/models/libro.dart

class Libro {
  int id;
  String titulo;
  String autor;
  String isbn;
  String genero;
  int ejemplaresDisponibles;
  int ejemplaresOcupados;
  String estado;

  Libro({
    required this.id,
    required this.titulo,
    required this.autor,
    required this.isbn,
    required this.genero,
    required this.ejemplaresDisponibles,
    required this.ejemplaresOcupados,
    required this.estado,
  });

  factory Libro.fromMap(Map<String, dynamic> json) {
    return Libro(
      id: json['id'],
      titulo: json['titulo'],
      autor: json['autor'],
      isbn: json['isbn'],
      genero: json['genero'],
      ejemplaresDisponibles: json['ejemplaresDisponibles'],
      ejemplaresOcupados: json['ejemplaresOcupados'],
      estado: json['estado'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titulo': titulo,
      'autor': autor,
      'isbn': isbn,
      'genero': genero,
      'ejemplaresDisponibles': ejemplaresDisponibles,
      'ejemplaresOcupados': ejemplaresOcupados,
      'estado': estado,
    };
  }
}
