import 'package:flutter/material.dart';
import 'package:pokedex/infoTable.dart';
import 'package:pokedex/nameTile.dart';
import 'package:pokedex/pokeType.dart';

import 'PokeSprites.dart';

class PokeInfo extends StatelessWidget {
  const PokeInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            color: Color.fromRGBO(239, 239, 251, 0.5),
            boxShadow: [
              BoxShadow(
                color: Colors.blueAccent.shade400.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.only(
                topRight: Radius.elliptical(200, 30),
                topLeft: Radius.elliptical(200, 30),
                bottomRight: Radius.elliptical(200, 30),
                bottomLeft: Radius.elliptical(200, 30)),
          ),
          child: Stack(
            children: [
               Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          PokeTypeCard(type: 'Grass',),
                          PokeTypeCard(type: 'Poison',),
                          SizedBox(width: 20,),
                          Text('Nº 001',
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight
                                .bold, color: Colors.black54),),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        InfoTable(),
                        PokeSprites(),
                      ],
                    ),
                    SizedBox(height: 12),
                    NameTile(),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
