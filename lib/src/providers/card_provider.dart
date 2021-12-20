import 'package:flutter/cupertino.dart';

class CardProvider {
  final String titulo;
  final String descripcion;
  final String icono;

  const CardProvider({
    required this.titulo,
    required this.descripcion,
    required this.icono,
  });

  static CardProvider fromJson(json) => CardProvider(
        titulo: json['titulo'],
        descripcion: json['descripcion'],
        icono: json['icono'],
      );
}
