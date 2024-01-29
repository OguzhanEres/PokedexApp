import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/pages/Home_page.dart';
import 'package:pokedex/widgets/pokemonlistesi.dart';

import '../model/pokemonmode.dart';
import '../services/pokedex_api.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  static late Future<List<Pokemonmodel>> pokemonlar;

  get index => null;
  @override
  void initState() {
    pokemonlar = Api.getpokemon();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemonmodel>>(
      future: pokemonlar,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Pokemonmodel> listem = snapshot.data!;
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
            itemCount: listem.length,
            itemBuilder: (context, index) {
              var oankieleman = listem[index];
              return PokemonListesi(pokemon: oankieleman);
            },
          );
        } else if (snapshot.hasError) {
          return Text('veri hata verdi');
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
