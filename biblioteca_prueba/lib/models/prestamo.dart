// lib/models/prestamo.dart

class Prestamo {
  int id;
  String fechaPrestamo;
  String fechaDevolucion;
  String mani;
  int usuarioId;
  int libroId;
  String estado;

  Prestamo({
    required this.id,
    required this.fechaPrestamo,
    required this.fechaDevolucion,
    required this.mani,
    required this.usuarioId,
    required this.libroId,
    required this.estado,
  });

  factory Prestamo.fromMap(Map<String, dynamic> json) {
    return Prestamo(
      id: json['id'],
      fechaPrestamo: json['fechaPrestamo'],
      fechaDevolucion: json['fechaDevolucion'],
      mani: json['mani'],
      usuarioId: json['usuarioId'],
      libroId: json['libroId'],
      estado: json['estado'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fechaPrestamo': fechaPrestamo,
      'fechaDevolucion': fechaDevolucion,
      'mani': mani,
      'usuarioId': usuarioId,
      'libroId': libroId,
      'estado': estado,
    };
  }
}
