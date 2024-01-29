import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/model/pokemonmode.dart';

class PokeDetail extends StatelessWidget {
  final Pokemonmodel pokemon;
  PokeDetail({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  pokemon.name.toString(),
                  style: Fontlarvedetaylar.getPokemonNameTextStyle(),
                ),
              ),
              Text(
                '#${pokemon.num}',
                style: Fontlarvedetaylar.getPokemonNameTextStyle(),
              )
            ],
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Chip(
              label: Text(
            pokemon.type!.join(' , ') ?? '',
            style: Fontlarvedetaylar.getTypeChipTextStyle(),
          ))
        ],
      ),
    );
  }
}
