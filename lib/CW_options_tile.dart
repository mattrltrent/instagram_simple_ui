import 'package:flutter/material.dart';

class OptionsTile extends StatefulWidget {

  final double verticalScaleFactor;
  final double horizontalScaleFactor;
  final String message;

  const OptionsTile({@required this.verticalScaleFactor, @required this.horizontalScaleFactor, @required this.message});

  @override
  _OptionsTileState createState() => _OptionsTileState();
}

class _OptionsTileState extends State<OptionsTile> with TickerProviderStateMixin{

  AnimationController buttonController;
  Animation buttonAnim;

  @override
  void initState() {
    super.initState();
    buttonController = AnimationController(
      duration: Duration(milliseconds: 25),
      vsync: this,
    );
    buttonAnim = IntTween(begin: 100, end: 110).animate(buttonController);
    buttonController.addListener((){
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    buttonController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          buttonController.forward();
          buttonAnim.addStatusListener((status){
            if (status == AnimationStatus.completed){
              buttonController.reverse();
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: widget.horizontalScaleFactor * 5),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15),),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Transform.scale(
                scale: buttonAnim.value / 100,
                child: Text(
                  widget.message,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: 'Ub',
                      fontSize: widget.verticalScaleFactor * 3,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}