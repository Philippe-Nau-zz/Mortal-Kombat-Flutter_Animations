import 'package:get/get.dart';

class CharacterController extends GetxController {
  int _index = 0;
  int get index => _index;

  changeCharacter(int itenCount) {
    if (index == itenCount - 1) {
      _index = 0;
    } else {
      _index++;
    }
    update();
  }
}
