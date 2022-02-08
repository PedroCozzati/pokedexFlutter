import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;
  final double height;

  CustomAppBar({
    @required this.child,
    this.height = kToolbarHeight*3.5,

  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 17),
      width: 200,
      color: Color.fromRGBO(201, 21, 18, 1),
      alignment: Alignment.center,
      child: child,
    );
  }
}