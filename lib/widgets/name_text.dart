import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mortal_kombat/controller/character_controller.dart';

class NameText extends StatelessWidget {
  final String name;
  final double opacity;
  final double fontSize;
  final Color fontColor;
  NameText({
    @required this.name,
    @required this.opacity,
    @required this.fontSize,
    @required this.fontColor,
  });

  final opacityController = Get.put(CharacterController());

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(seconds: 2),
      opacity: opacityController.opacity,
      curve: Curves.easeInCubic,
      child: FittedBox(
        child: Text(
          this.name,
          style: TextStyle(
            fontSize: this.fontSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w900,
            color: this.fontColor,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
