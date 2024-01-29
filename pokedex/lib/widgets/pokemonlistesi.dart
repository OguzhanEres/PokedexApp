// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';

import 'package:pokedex/model/pokemonmode.dart';
import 'package:pokedex/pages/detailpage.dart';
import 'package:pokedex/widgets/pokeball_images.dart';

class PokemonListesi extends StatefulWidget {
  final Pokemonmodel pokemon;
  PokemonListesi({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  State<PokemonListesi> createState() => _PokemonListesiState();
}

class _PokemonListesiState extends State<PokemonListesi> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(pokemon: widget.pokemon),
            ));
      },
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
        elevation: 3,
        shadowColor: Colors.white,
        color: Fontlarvedetaylar.getColorFromType(widget.pokemon.type![0]),
        child: Padding(
          padding: Fontlarvedetaylar.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.pokemon.name.toString(),
                  style: Fontlarvedetaylar.getPokemonNameTextStyle()),
              Chip(label: Text(widget.pokemon.type![0])),
              Expanded(
                child: PokeImageandBall(
                  pokemon: widget.pokemon,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
