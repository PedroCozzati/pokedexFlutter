import 'package:flutter/material.dart';

class InfoTable extends StatelessWidget {
  const InfoTable({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0,left: 50),
      child: Container(
        width: 140,
        height: 218,
        child: Column(
          children: [
            ListTile(title: Text( 'Species'),subtitle: Text('Seed Pokemón'),tileColor: Colors.white54,),
            Divider(height: 1,color: Colors.grey,),
            ListTile(title: Text( 'Height'),subtitle: Text('0.7 m (2′04″)'),tileColor: Colors.white54),
            Divider(height: 1,color: Colors.grey,),
            ListTile(title: Text( 'Weight'),subtitle: Text('6.9 kg (15.2 lbs)'),tileColor: Colors.white54),
          ],
        ),
      ),
    );
  }
}
