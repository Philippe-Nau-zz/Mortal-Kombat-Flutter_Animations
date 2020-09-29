import 'package:flutter/material.dart';

class MyAnimatedIcon extends StatelessWidget {
  final int millisecondsAlign;
  final int secondsOpacity;
  final double alignmentX;
  final double alignmentY;
  final double opacity;
  final Function onTap;
  final Function onEnd;
  final double radius;
  final IconData icon;
  final Color containerColor;
  final Color iconColor;
  final String text;

  MyAnimatedIcon({
    @required this.millisecondsAlign,
    @required this.secondsOpacity,
    @required this.alignmentX,
    @required this.alignmentY,
    @required this.opacity,
    @required this.onTap,
    @required this.onEnd,
    @required this.radius,
    @required this.icon,
    @required this.containerColor,
    @required this.iconColor,
    @required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return AnimatedAlign(
      duration: Duration(milliseconds: this.millisecondsAlign),
      curve: Curves.bounceOut,
      onEnd: this.onEnd,
      alignment: Alignment(this.alignmentX, this.alignmentY),
      child: InkWell(
        onTap: this.onTap,
        child: Container(
          width: 140,
          height: 170,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 140,
                height: 140,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: this.containerColor,
                  borderRadius: BorderRadius.circular(this.radius),
                ),
                child: Icon(
                  this.icon,
                  color: this.iconColor,
                  size: 100,
                ),
              ),
              AnimatedOpacity(
                duration: Duration(seconds: this.secondsOpacity),
                opacity: this.opacity,
                child: Text(
                  this.text,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
