import 'package:flutter/material.dart';
import 'CW_options_tile.dart';

class PostTile extends StatefulWidget {
  final double horizontalScaleFactor;
  final double width;
  final double verticalScaleFactor;
  final double height;

  const PostTile(
      {@required this.height,
      @required this.horizontalScaleFactor,
      @required this.width,
      @required this.verticalScaleFactor});

  @override
  _PostTileState createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: widget.horizontalScaleFactor * 4,
          right: widget.horizontalScaleFactor * 4,
          top: widget.horizontalScaleFactor * 2,
          bottom: widget.horizontalScaleFactor * 2),
      child: Container(
        height: widget.width * 1.2,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: widget.horizontalScaleFactor * 1.5,
              offset: Offset(0, widget.verticalScaleFactor * 0.25),
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Material(
                    child: Padding(
                      padding:
                      EdgeInsets.only(left: widget.horizontalScaleFactor * 3),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: widget.horizontalScaleFactor * 8,
                            height: widget.horizontalScaleFactor * 8,
                            child: Image.asset('images/pp6.png', fit: BoxFit.contain),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: widget.horizontalScaleFactor * 2),
                          Text(
                            'Melody',
                            style: TextStyle(
                                fontFamily: 'Ub',
                                fontSize: widget.horizontalScaleFactor * 4),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => Center(
                                    child: Container(
                                      width: widget.width / 1.25,
                                      height: widget.height / 2,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black38,
                                            blurRadius:
                                            widget.verticalScaleFactor *
                                                1.5,
                                            offset: Offset(
                                                0,
                                                widget.verticalScaleFactor *
                                                    0.25),
                                          ),
                                        ],
                                      ),
                                      child: Material(
                                        type: MaterialType.transparency,
                                        child: Column(
                                          children: <Widget>[
                                            OptionsTile(
                                                message: 'Report',
                                                verticalScaleFactor:
                                                widget.verticalScaleFactor,
                                                horizontalScaleFactor: widget
                                                    .horizontalScaleFactor),
                                            OptionsTile(
                                                message:
                                                'Turn on post notifications',
                                                verticalScaleFactor:
                                                widget.verticalScaleFactor,
                                                horizontalScaleFactor: widget
                                                    .horizontalScaleFactor),
                                            OptionsTile(
                                                message: 'Copy link',
                                                verticalScaleFactor:
                                                widget.verticalScaleFactor,
                                                horizontalScaleFactor: widget
                                                    .horizontalScaleFactor),
                                            OptionsTile(
                                                message: 'Share to',
                                                verticalScaleFactor:
                                                widget.verticalScaleFactor,
                                                horizontalScaleFactor: widget
                                                    .horizontalScaleFactor),
                                            OptionsTile(
                                                message: 'Unfollow',
                                                verticalScaleFactor:
                                                widget.verticalScaleFactor,
                                                horizontalScaleFactor: widget
                                                    .horizontalScaleFactor),
                                            OptionsTile(
                                                message: 'Mute',
                                                verticalScaleFactor:
                                                widget.verticalScaleFactor,
                                                horizontalScaleFactor: widget
                                                    .horizontalScaleFactor),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ));
                            },
                            child: Container(
                              width: widget.horizontalScaleFactor * 15,
                              height: widget.verticalScaleFactor * 10,
                              child: Icon(Icons.more_vert,
                                  color: Colors.grey,
                                  size: widget.horizontalScaleFactor * 7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
                    child: Image.asset('images/post11.jpg', fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: widget.verticalScaleFactor * 1, horizontal: widget.horizontalScaleFactor * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.favorite_border, size: widget.horizontalScaleFactor * 8, color: Colors.red),
                    SizedBox(width: widget.horizontalScaleFactor * 2,),
                    Icon(Icons.chat_bubble_outline, size: widget.horizontalScaleFactor * 8, color: Colors.white),
                    Spacer(),
                    Icon(Icons.bookmark_border, size: widget.horizontalScaleFactor * 8),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
