import 'package:get/state_manager.dart';

class FinalPageController extends GetxController {
  double _alignment = -1.4;
  double get alignment => _alignment;
  double _opacity = 0.0;
  double get opacity => _opacity;

  @override
  void onReady() {
    changeAlignment();
    super.onReady();
  }

  changeAlignment() {
    _alignment = 0.0;
    update();
  }

  changeOpacity() {
    _opacity = 1;
    update();
  }
}
