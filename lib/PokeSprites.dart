import 'package:flutter/material.dart';

class PokeSprites extends StatefulWidget {
  PokeSprites({Key key}) : super(key: key);

  @override
  _PokeSpritesState createState() => _PokeSpritesState();
}

class _PokeSpritesState extends State<PokeSprites> {
  String sprite = 'https://img.pokemondb.net/sprites/x-y/normal/bulbasaur.png';
  String spriteBase = 'https://img.pokemondb.net/sprites/x-y/normal/bulbasaur.png';
  String spriteShiny = 'https://img.pokemondb.net/sprites/x-y/shiny/bulbasaur.png';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 100,
            width: 200,
            child: Image.network(sprite,height: 200,width: 200,fit: BoxFit.cover,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20,),
            child: IconButton(icon: Icon(Icons.star_sharp,color: Colors.yellow,size: 50,), onPressed: () {
              sprite == spriteBase?
              setState(() {
                sprite = spriteShiny;
              }):
              setState(() {
                sprite = spriteBase;
              });
            }),
          ),
        ],
      ),
    );
  }
}
