import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterresponsivetest/style.dart';
import 'CW_story_tile_2.dart';
import 'CW_post_tile.dart';

class HomeScreen2 extends StatefulWidget {
  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {

  double height;
  double width;
  double horizontalScaleFactor;
  double verticalScaleFactor;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    horizontalScaleFactor = width / 100;
    verticalScaleFactor = height / 100;
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: <Widget>[
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: (verticalScaleFactor * 15) + (horizontalScaleFactor * 2),
                    ),
                    PostTile(horizontalScaleFactor: horizontalScaleFactor, width: width, verticalScaleFactor: verticalScaleFactor, height: height),
                    PostTile(horizontalScaleFactor: horizontalScaleFactor, width: width, verticalScaleFactor: verticalScaleFactor, height: height),
                    PostTile(horizontalScaleFactor: horizontalScaleFactor, width: width, verticalScaleFactor: verticalScaleFactor, height: height),
                    PostTile(horizontalScaleFactor: horizontalScaleFactor, width: width, verticalScaleFactor: verticalScaleFactor, height: height),
                    SizedBox(
                      height: (horizontalScaleFactor * 2),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: verticalScaleFactor * 15,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: verticalScaleFactor * 1, offset: Offset(0, verticalScaleFactor * 1.25),),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: verticalScaleFactor * 0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: horizontalScaleFactor * 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(
                                  Icons.camera_alt,
                                  color: Colors.black,
                                  size: verticalScaleFactor * 3,
                                ),
                                Text(
                                  'Instagram',
                                  style: TextStyle(
                                      fontFamily: 'Pacifico', fontSize: verticalScaleFactor * 2.5),
                                ),
                                Icon(
                                  Icons.send,
                                  color: Colors.black,
                                  size: verticalScaleFactor * 3,
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: horizontalScaleFactor * 1.5),
                                StoryTile2(verticalScaleFactor: verticalScaleFactor, horizontalScaleFactor: horizontalScaleFactor),
                                StoryTile2(verticalScaleFactor: verticalScaleFactor, horizontalScaleFactor: horizontalScaleFactor),
                                StoryTile2(verticalScaleFactor: verticalScaleFactor, horizontalScaleFactor: horizontalScaleFactor),
                                StoryTile2(verticalScaleFactor: verticalScaleFactor, horizontalScaleFactor: horizontalScaleFactor),
                                StoryTile2(verticalScaleFactor: verticalScaleFactor, horizontalScaleFactor: horizontalScaleFactor),
                                StoryTile2(verticalScaleFactor: verticalScaleFactor, horizontalScaleFactor: horizontalScaleFactor),
                                StoryTile2(verticalScaleFactor: verticalScaleFactor, horizontalScaleFactor: horizontalScaleFactor),
                                SizedBox(width: horizontalScaleFactor * 1.5),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




