import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/pokeBallWidget.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height * 0.23,
        decoration: BoxDecoration(
          color: Color.fromRGBO(201, 21, 18, 1),
        ),
        child: PokeBallWidget(
          distance: EdgeInsets.only(bottom: 120),
          radius: BorderRadius.only(
            bottomRight: Radius.circular(100),
            bottomLeft: Radius.circular(100),
          ),
          innerRadius: BorderRadius.only(
            bottomRight: Radius.circular(90),
            bottomLeft: Radius.circular(90),
          ),
        ));
  }
}
