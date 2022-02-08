import 'package:flutter/material.dart';

class PokeBallWidget extends StatelessWidget {
  const PokeBallWidget({Key key, this.radius, this.innerRadius, this.distance}) : super(key: key);
  final BorderRadius radius;
  final BorderRadius innerRadius;
  final EdgeInsets distance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: distance,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: radius,
                  color: Colors.black,
                ),
                width: 210,
                height: 80,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: innerRadius,
                  color: Colors.white,
                ),
                width: 160,
                height: 80,
              )
            ],
          ),
        ],
      ),
    );
  }
}
