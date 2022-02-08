import 'package:flutter/material.dart';
import 'package:pokedex/homeDex.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Color.fromRGBO(201, 21, 18, 1),
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.48,
            ),
            Divider(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              color: Color.fromRGBO(255, 255, 255, 1),
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.48,
            ),
          ],
        ),
        Container(
          width: 140,
          decoration: BoxDecoration(
              border: Border.all(width: 7.0, color: Colors.black),
              color: Colors.white,
              shape: BoxShape.circle),
          child: Center(
            child: FadeTransition(
              opacity: _animationController,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Container(
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.blueGrey),
                      color: Colors.white,
                      shape: BoxShape.circle),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
