import 'package:Orientation/data/constants.dart';
import 'package:flutter/material.dart';

class Snack extends StatelessWidget {
  final String value;
  final IconData icon;

  Snack(this.value, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 5.0,
        bottom: 5.0,
        left: 12.0,
        right: 15.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: kWhiteShade,
      ),
      child: Center(
        child: Row(
          children: [
            Icon(icon, color: Color(0xFF2BAE66)),
            SizedBox(width: 5.0),
            Text(
              value,
              style: TextStyle(
                  color: kGreenShade,
                  decoration: TextDecoration.none,
                  fontSize: 16.0,
                  fontFamily: "SF-Pro-Text-Bold"),
            ),
          ],
        ),
      ),
    );
  }
}