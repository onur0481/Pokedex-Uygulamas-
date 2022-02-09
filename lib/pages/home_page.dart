import 'package:flutter/material.dart';
import 'package:flutter_pokedex/widgets/app_title.dart';
import 'package:flutter_pokedex/widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OrientationBuilder(
          builder: (context, orientation) => Column(
            children: [
              const AppTitle(),
              const SizedBox(
                height: 15,
              ),
              Expanded(child: PokemonList()),
            ],
          ),
        ),
      ),
    );
  }
}
