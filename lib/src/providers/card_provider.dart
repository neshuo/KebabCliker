import 'dart:convert';

import 'package:flutter/services.dart';

class CardProvider {
  List<dynamic> cards = [];

  Future<List<dynamic>> cargarData() async {
    final respuesta = await rootBundle.loadString('data/cards.json');
    Map<String, dynamic> dataMap = json.decode(respuesta);
    cards = dataMap['lista'];
    return cards;
  }
}

final cardProvider = CardProvider();
