import 'package:flutter/material.dart';
import 'CW_story_tile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height;
  double width;
  double overall;

  @override
  Widget build(BuildContext context) {
    height = (MediaQuery.of(context).size.height / 100);
    width = (MediaQuery.of(context).size.width / 100);
    overall = width / height;
    print(overall);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: overall * 250,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: overall * 8,
                  offset: Offset(overall * 2, overall * 1.25),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: overall * 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.chevron_left,
                        color: Colors.grey,
                        size: overall * 60,
                      ),
                      Text(
                        'Instagram',
                        style: TextStyle(
                            fontFamily: 'Pacifico', fontSize: overall * 40),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                        size: overall * 60,
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: overall * 20),
                      StoryTile(overall: overall),
                      StoryTile(overall: overall),
                      StoryTile(overall: overall),
                      StoryTile(overall: overall),
                      StoryTile(overall: overall),
                      StoryTile(overall: overall),
                      StoryTile(overall: overall),
                      StoryTile(overall: overall),
                      StoryTile(overall: overall),
                      StoryTile(overall: overall),
                      SizedBox(width: overall * 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


