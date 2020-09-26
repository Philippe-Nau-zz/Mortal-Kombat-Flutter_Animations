import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mortal_kombat/controller/character_controller.dart';

class ContainerAnimated extends StatelessWidget {
  final List<Color> gradientColor;
  ContainerAnimated(this.gradientColor);

  final matrix = Get.put(CharacterController());
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.skew(matrix.matrixX, matrix.matrixY),
      duration: Duration(seconds: 6),
      curve: Curves.linearToEaseOut,
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: this.gradientColor,
        ),
      ),
    );
  }
}
