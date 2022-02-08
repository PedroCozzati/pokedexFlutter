import 'package:flutter/material.dart';

class NameTile extends StatelessWidget {
  const NameTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.elliptical(200, 30),
              topLeft: Radius.elliptical(200, 30),
              bottomRight: Radius.elliptical(200, 30),
              bottomLeft: Radius.elliptical(200, 30)),
        color: Colors.white,
        border: Border.all(color: Colors.white54)
      ),
      child: Center(
        child: Text(
          'Bulbasaur',style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
