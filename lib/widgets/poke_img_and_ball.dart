import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constant/constant.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_pokedex/constant/ui_helper.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImageAndBall({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            Constants.pokeballImageUrl,
            width: UIHelper.calculatePokeImgAndBallSize(),
            height: UIHelper.calculatePokeImgAndBallSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(
              imageUrl: pokemon.img ?? "",
              errorWidget: (context, url, error) => const Icon(Icons.unarchive),
              width: UIHelper.calculatePokeImgAndBallSize(),
              height: UIHelper.calculatePokeImgAndBallSize(),
              fit: BoxFit.fitHeight,
              placeholder: (context, url) => CircularProgressIndicator(
                color: UIHelper.getColorFromType(pokemon.type![0]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
