import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Gender extends StatelessWidget {
  final IconData genIcon;
  final String genlabel;
  // ignore: non_constant_identifier_names
  final Color IconColour;
  Gender(this.genIcon , this.genlabel , this.IconColour);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        FaIcon(
          genIcon,
          size: 80.0,
          color: IconColour,
        ),
        SizedBox(height: 20,),
        Text(
          genlabel,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: IconColour,
          ),
        ),
      ],
    );
  }
}