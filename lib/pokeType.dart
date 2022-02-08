import 'package:flutter/material.dart';

class PokeTypeCard extends StatelessWidget {
  PokeTypeCard({Key key,@required this.type}) : super(key: key);
  final String type;
  MaterialColor typeColor;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case 'Grass':
        typeColor = Colors.green;
        break;
      case 'Poison':
        typeColor = Colors.purple;
        break;
      default:
        typeColor = Colors.grey;
    }

    return Container(
      width: 60,
      height: 30,
      decoration: BoxDecoration(
          color: typeColor, borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        type,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      )),
    );
  }
}
