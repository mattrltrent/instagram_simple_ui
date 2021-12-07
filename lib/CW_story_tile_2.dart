import 'package:flutter/material.dart';

class StoryTile2 extends StatelessWidget {

  StoryTile2({@required this.verticalScaleFactor, @required this.horizontalScaleFactor});

  final double verticalScaleFactor;
  final double horizontalScaleFactor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalScaleFactor * 0.75, vertical: verticalScaleFactor * 0.5),
      child: Container(
        width: verticalScaleFactor * 8,
        height: verticalScaleFactor * 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.orange, width: verticalScaleFactor * 0.25),
        ),
        child: Padding(child: Image.asset('images/pp1.png', fit: BoxFit.contain,),
          padding: EdgeInsets.all(verticalScaleFactor * 0.25),
        ),
      ),
    );
  }
}