import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/pokelist_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/model.dart';
import '../services/pokedex_api.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> _pokemonList;

  @override
  void initState() {
    super.initState();
    _pokemonList = PokeApi.getPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('pokemon List Build Çalıştı');
    return FutureBuilder<List<PokemonModel>>(
        future: _pokemonList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<PokemonModel> _listem = snapshot.data!;

            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        ScreenUtil().orientation == Orientation.portrait
                            ? 2
                            : 3),
                itemBuilder: (context, index) {
                  debugPrint('İtem Builder Çalıştı');
                  return PokeListItem(pokemon: _listem[index]);
                });
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Hata geldi'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
