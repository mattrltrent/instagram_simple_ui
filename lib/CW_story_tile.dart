import 'package:flutter/material.dart';

class StoryTile extends StatelessWidget {

  final double overall;

  StoryTile({@required this.overall});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: overall * 10),
      child: Container(
        width: overall * 140,
        height: overall * 140,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(
              color: Colors.orange, width: overall * 3),
        ),
        child: Padding(
          padding: EdgeInsets.all(overall * 3),
          child: Image.asset('images/pp1.png',
              fit: BoxFit.contain),
        ),
      ),
    );
  }
}