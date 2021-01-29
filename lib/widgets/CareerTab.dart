import 'package:Orientation/data/constants.dart';
import 'package:flutter/material.dart';

class CareerTab extends StatelessWidget {
  final String name;

  CareerTab({this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10.0,
      ),
      padding: EdgeInsets.only(
        left: 12.0,
        right: 12.0,
        top: 8.0,
        bottom: 8.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: kWhiteShade,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: kWhiteShade,
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(
                color: Colors.blueAccent,
                width: 2.0,
              ),
            ),
            child: Center(
              child: Icon(Icons.work_outline, color: Colors.blueAccent),
            ),
          ),
          SizedBox(width: 16.0),
          Flexible(
            child: Text(
              name,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}