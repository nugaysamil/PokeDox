import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/constaint/constaint.dart';
import 'package:flutter_application_1/model/model.dart';
import 'package:flutter/material.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeInformation({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white),
      child: Column(children: [
        _buildInformationRow('Name', pokemon.name),
        _buildInformationRow('Height', pokemon.height),
        _buildInformationRow('Weight', pokemon.weight),
        _buildInformationRow('Spawn Time', pokemon.spawnTime),
        _buildInformationRow('Pre Evolotion', pokemon.prevEvolution),
        _buildInformationRow('Weakness', pokemon.weaknesses),
        _buildInformationRow('Next Evolution', pokemon.nextEvolution),
      ]),
    );
  }

  _buildInformationRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: Constaints.getPokeLabelTextStyle()),
        if (value is List && value.isNotEmpty)
          Text(
            value.join(','),
            style: Constaints.getPokemonNameTextStyle(),
          )
        else if (value == null)
          const Text('Not Avaible')
        else
          Text(value),
      ],
    );
  }
}
