import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/constaint/constaint.dart';
import 'package:flutter_application_1/model/model.dart';
import 'package:flutter/material.dart';

class PokeNameType extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeNameType({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  pokemon.name ?? '',
                  style: Constaints.getPokemonNameTextStyle(),
                ),
              ),
              Text('#${pokemon.num}',
                  style: Constaints.getPokemonNameTextStyle())
            ],
          ),
          SizedBox(
            height: 0.02,
          ),
          Chip(
              label: Text(
            pokemon.type?.join(' , ') ?? '',
            style: Constaints.getTypeChipTextStyle(),
          ))
        ],
      ),
    );
  }
}
