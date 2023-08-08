class Articulos {
  String operador;
  String numero;
  String urlimage;
  String nombre;
  String hora;
  String fecha;
  Articulos({
    required this.operador,
    required this.numero,
    required this.urlimage,
    required this.nombre,
    required this.hora,
    required this.fecha,
  });
  Map<String, dynamic> toMap() {
    return {
      'operador': operador,
      'urlimage': urlimage,
      'numero': numero,
      'nombre': nombre,
      'hora': hora,
      'fecha': fecha
    };
  }

  Articulos.fromMap(Map<String, dynamic> map)
      : operador = map["operador"],
        urlimage = map["urlimage"],
        numero = map["numero"],
        nombre = map["nombre"],
        hora = map["hora"],
        fecha = map["fecha"];
}
