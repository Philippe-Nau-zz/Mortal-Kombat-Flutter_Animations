import 'dart:math';

import 'package:get/get.dart';

class CharacterController extends GetxController {
  int _index = 0;
  int get index => _index;

  double _positioned = -0.5;
  double get positioned => _positioned;
  double _positioned1 = -0.8;
  double get positioned1 => _positioned1;

  double _matrixX = 0;
  double get matrixX => _matrixX;
  double _matrixY = 0;
  double get matrixY => _matrixY;

  double _opacity = 0;
  double get opacity => _opacity;

  @override
  void onReady() {
    super.onReady();
    changeMatrix();
    moveContainer();
    changeOpacity();
  }

  changeCharacter(int itenCount) {
    if (index == itenCount - 1) {
      _index = 0;
    } else {
      _index++;
    }
    changeMatrix();
    moveContainer();
    update();
    changeOpacity();
  }

  changeMatrix() {
    _matrixX = (Random().nextInt(2)).toDouble();
    _matrixY = Random().nextInt(2) * -1.toDouble();
  }

  moveContainer() {
    if (_positioned == -0.5) {
      _positioned = -1.2;
    } else {
      _positioned = -0.5;
    }
    if (_positioned1 == -0.5) {
      _positioned1 = -0.8;
    } else {
      _positioned1 = -0.5;
    }
    update();
  }

  changeOpacity() {
    _opacity = 1;
    update();
  }
}
