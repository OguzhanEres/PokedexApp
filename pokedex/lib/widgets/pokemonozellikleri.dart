import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemonmode.dart';

import '../constants/constants.dart';

class PokeIcerik extends StatelessWidget {
  final Pokemonmodel pokemon;
  PokeIcerik({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'images/pokeball.png',
              width: Fontlarvedetaylar.calculatePokeImgAndBallSizeDetail(),
              height: Fontlarvedetaylar.calculatePokeImgAndBallSizeDetail(),
              fit: BoxFit.fitHeight,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 75),
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _builddetails('Name', pokemon.name),
                          _builddetails('Height', pokemon.height),
                          _builddetails('Weight', pokemon.weight),
                          _builddetails('Spawn Time', pokemon.spawnTime),
                          _builddetails('Weakness', pokemon.weaknesses),
                          _builddetails('Pre Evolation', pokemon.prevEvolution),
                          // _builddetails('Next Evolation', pokemon.nextEvolution),
                        ]),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: CachedNetworkImage(
              imageUrl: pokemon.img ?? '',
              width: Fontlarvedetaylar.calculatePokeImgAndBallSizeDetail(),
              height: Fontlarvedetaylar.calculatePokeImgAndBallSizeDetail(),
              fit: BoxFit.fitHeight,
              placeholder: (context, url) =>
                  CircularProgressIndicator(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  _builddetails(String label, dynamic value) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Fontlarvedetaylar.getPokemonNameTextStyleDetail(),
          ),
          if (value is List && value.isNotEmpty)
            Text(value.join(' , '),
                style: Fontlarvedetaylar.getPokemonNameTextStyleDetail())
          else if (value == null)
            Text('Not Available',
                style: Fontlarvedetaylar.getPokemonNameTextStyleDetail())
          else
            Text(value.toString(),
                style: Fontlarvedetaylar.getPokemonNameTextStyleDetail())
        ],
      ),
    );
  }
}
