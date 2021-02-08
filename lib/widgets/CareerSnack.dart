import 'package:Orientation/data/constants.dart';
import 'package:flutter/material.dart';

class CareerSnack extends StatelessWidget {
  final String name;

  CareerSnack({this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        border: Border.all(color: kGreenShade),
      ),
      padding: EdgeInsets.all(10.0),
      child: Text(
        name,
        style: TextStyle(
            fontFamily: 'Calibre-Semibold',
            color: kGreenShade,
            fontWeight: FontWeight.bold,
            fontSize: 20.0),
      ),
    );
  }
}
