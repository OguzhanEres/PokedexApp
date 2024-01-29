import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/model/pokemonmode.dart';
import 'package:pokedex/widgets/pokedetails.dart';
import 'package:pokedex/widgets/pokemonozellikleri.dart';

class DetailPage extends StatelessWidget {
  final Pokemonmodel pokemon;
  DetailPage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Fontlarvedetaylar.getColorFromType(pokemon.type![0]),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: Fontlarvedetaylar.getDefaulticonbuttonPadding(),
            child: IconButton(
                iconSize: 24.w,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          ),
          PokeDetail(pokemon: pokemon),
          PokeIcerik(
            pokemon: pokemon,
          ),
        ],
      )),
    );
  }
}
