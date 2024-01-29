import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/model/pokemonmode.dart';

class PokeImageandBall extends StatelessWidget {
  final Pokemonmodel pokemon;
  PokeImageandBall({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            'images/pokeball.png',
            width: Fontlarvedetaylar.calculatePokeImgAndBallSize(),
            height: Fontlarvedetaylar.calculatePokeImgAndBallSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(
              imageUrl: pokemon.img ?? '',
              width: Fontlarvedetaylar.calculatePokeImgAndBallSize(),
              height: Fontlarvedetaylar.calculatePokeImgAndBallSize(),
              fit: BoxFit.fitHeight,
              placeholder: (context, url) =>
                  CircularProgressIndicator(color: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}
