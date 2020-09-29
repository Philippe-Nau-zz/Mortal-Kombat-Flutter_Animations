import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  final Function clickButton;
  final List<Color> gradientColor;
  final Color colors;

  AnimatedButton({
    @required this.clickButton,
    @required this.colors,
    @required this.gradientColor,
  });

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  AnimationController _glowAnimationController;
  Animation _glowAnimation;

  @override
  void initState() {
    _glowAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _glowAnimationController.repeat(reverse: true);
    _glowAnimation =
        Tween(begin: 5.0, end: 25.0).animate(_glowAnimationController)
          ..addListener(() {
            setState(() {});
          });
    super.initState();
  }

  @override
  void dispose() {
    _glowAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: widget.clickButton,
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.easeOutSine,
        width: 180,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'NEXT FIGHTER',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 2),
            Icon(
              Icons.arrow_forward,
              size: 18,
            )
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: widget.gradientColor,
          ),
          boxShadow: [
            BoxShadow(
              color: widget.colors.withOpacity(0.6),
              blurRadius: _glowAnimation.value,
            ),
          ],
        ),
      ),
    );
  }
}
