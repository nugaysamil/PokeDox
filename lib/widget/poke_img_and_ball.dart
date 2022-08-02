import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constaint/ui_helper.dart';
import 'package:flutter_application_1/model/model.dart';

class PackImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PackImageAndBall({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = 'images/pokeball.png';
    return Align(
      alignment: Alignment.bottomRight,
      child: Stack(
        children: [
          Image.asset(
            pokeballImageUrl,
            width: UIHelper.calculatePokeImgAndBallSize(),
            height: UIHelper.calculatePokeImgAndBallSize(),
            fit: BoxFit.fitHeight,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: CachedNetworkImage(
              imageUrl: pokemon.img ?? '',
              width: UIHelper.calculatePokeImgAndBallSize(),
              height: UIHelper.calculatePokeImgAndBallSize(),
              fit: BoxFit.fitHeight,
              placeholder: (context, url) =>
                  const CircularProgressIndicator(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
