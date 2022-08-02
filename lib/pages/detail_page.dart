import 'package:flutter/material.dart';
import 'package:flutter_application_1/constaint/constaint.dart';
import 'package:flutter_application_1/constaint/ui_helper.dart';
import 'package:flutter_application_1/widget/poke_information.dart';

import '../model/model.dart';
import '../widget/poke_type_name.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;

  const DetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: UIHelper.getIconPadding(),
            child: IconButton(
                iconSize: 24,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios)),
          ),
          PokeNameType(pokemon: pokemon),
          PokeInformation(pokemon: pokemon)
        ],
      )),
    );
  }
}
