import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kebabcliker/src/api/cards_api.dart';
import 'package:kebabcliker/src/providers/card_provider.dart';

class UpgradePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: FutureBuilder<List<CardProvider>>(
          future: CardsApi.getCards(context),
          builder: (context, snapshot) {
            final cards = snapshot.data;

            switch (snapshot.connectionState) {
              //Esto es para que aparezca el típico circulito de: "cargando..."
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  //Control de errores
                  return Center(child: Text('Some error ocurred!'));
                } else {
                  return buildCards(cards!); //Si no hay errores envía la Card
                }
            }
          },
        ),
      );

  Widget buildCards(List<CardProvider> cards) => ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: cards.length,
        itemBuilder: (context, index) {
          final card = cards[index];

          return ListTile(
            // onTap: ,
            leading: CircleAvatar(
              backgroundImage: NetworkImage(card.icono),
            ),
            title: Text(card.titulo),
            subtitle: Text(card.descripcion),
          );
        },
      );
}
