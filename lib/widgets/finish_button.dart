import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FinishButton extends StatefulWidget {
  @override
  _FinishButtonState createState() => _FinishButtonState();
}

class _FinishButtonState extends State<FinishButton>
    with SingleTickerProviderStateMixin {
  AnimationController _opacityAnimationController;
  Animation _opacityAnimation;

  @override
  void initState() {
    _opacityAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _opacityAnimationController.repeat(reverse: true);
    _opacityAnimation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _opacityAnimationController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _opacityAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.1,
      child: Opacity(
        opacity: _opacityAnimation.value,
        child: Container(
          width: 130,
          height: 50,
          child: InkWell(
            onTap: () {
              Get.offAllNamed('/final');
            },
            child: Image.asset(
              '../assets/images/finish.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
