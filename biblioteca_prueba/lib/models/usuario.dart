// lib/models/usuario.dart

class Usuario {
  int id;
  String nombre;
  String direccion;
  String correo;
  String tipoUsuario;
  String estado;

  Usuario({
    required this.id,
    required this.nombre,
    required this.direccion,
    required this.correo,
    required this.tipoUsuario,
    required this.estado,
  });

  factory Usuario.fromMap(Map<String, dynamic> json) {
    return Usuario(
      id: json['id'],
      nombre: json['nombre'],
      direccion: json['direccion'],
      correo: json['correo'],
      tipoUsuario: json['tipoUsuario'],
      estado: json['estado'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'direccion': direccion,
      'correo': correo,
      'tipoUsuario': tipoUsuario,
      'estado': estado,
    };
  }
}
