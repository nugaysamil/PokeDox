import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constaint/constaint.dart';
import 'package:flutter_application_1/constaint/ui_helper.dart';
import 'package:flutter_application_1/model/model.dart';
import 'package:flutter_application_1/pages/detail_page.dart';
import 'package:flutter_application_1/widget/poke_img_and_ball.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeListItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailPage(pokemon: pokemon),
        ));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(pokemon.name ?? 'N/A',
                    style: Constaints.getPokemonNameTextStyle()),
                Chip(label: Text(pokemon.type![0])),
                Expanded(child: PackImageAndBall(pokemon: pokemon)),
              ]),
        ),
      ),
    );
  }
}
