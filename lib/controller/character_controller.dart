import 'dart:math';

import 'package:get/get.dart';

class CharacterController extends GetxController {
  int _index = 0;
  int get index => _index;

  double _matrixX = 0;
  double get matrixX => _matrixX;
  double _matrixY = 0;
  double get matrixY => _matrixY;

  @override
  void onInit() {
    super.onInit();
    changeMatrix();
  }

  changeCharacter(int itenCount) {
    if (index == itenCount - 1) {
      _index = 0;
    } else {
      _index++;
    }
    changeMatrix();
    update();
  }

  changeMatrix() {
    _matrixX = (Random().nextInt(2)).toDouble();
    _matrixY = Random().nextInt(2) * -1.toDouble();
  }
}
