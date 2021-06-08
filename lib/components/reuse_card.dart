import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  ReuseCard(@required this.colour , this.cardChild);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      width: 180,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
          boxShadow: [
            BoxShadow(
              color: Color(0xFFe7e6e1),
              blurRadius: 10.0,
              spreadRadius: 4.0,
            )
          ]),
      child: cardChild,
    );
  }
}
