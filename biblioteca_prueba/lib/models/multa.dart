// lib/models/multa.dart

class Multa {
  int id;
  double valorMulta;
  String fechaMulta;
  String estado;
  int usuarioId;
  int prestamoId;

  Multa({
    required this.id,
    required this.valorMulta,
    required this.fechaMulta,
    required this.estado,
    required this.usuarioId,
    required this.prestamoId,
  });

  factory Multa.fromMap(Map<String, dynamic> json) {
    return Multa(
      id: json['id'],
      valorMulta: json['valorMulta'],
      fechaMulta: json['fechaMulta'],
      estado: json['estado'],
      usuarioId: json['usuarioId'],
      prestamoId: json['prestamoId'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'valorMulta': valorMulta,
      'fechaMulta': fechaMulta,
      'estado': estado,
      'usuarioId': usuarioId,
      'prestamoId': prestamoId,
    };
  }
}
