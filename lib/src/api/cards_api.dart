import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:kebabcliker/src/providers/card_provider.dart';

class CardsApi {
  static Future<List<CardProvider>> getCards(BuildContext context) async {
    final AssetBundle = DefaultAssetBundle.of(context);
    final data = await AssetBundle.loadString('assets/data/cards.json');
    final body = json.decode(data);

    return body.map<CardProvider>(CardProvider.fromJson).toList();
  }
}
