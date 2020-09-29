import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:mortal_kombat/controller/finalPage_controller.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:mortal_kombat/widgets/animated_icon.dart';

class FinalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[900],
        child: GetBuilder<FinalPageController>(
          init: FinalPageController(),
          builder: (finalPageController) => Stack(
            children: [
              MyAnimatedIcon(
                onTap: () {},
                onEnd: finalPageController.changeOpacity(),
                millisecondsAlign: 1500,
                secondsOpacity: 1,
                alignmentX: -0.2,
                alignmentY: finalPageController.alignment,
                opacity: finalPageController.opacity,
                icon: MaterialCommunityIcons.github_face,
                containerColor: Colors.white,
                iconColor: Colors.grey[900],
                text: '/Philippe-Nau',
                radius: 70,
              ),
              MyAnimatedIcon(
                onTap: () {},
                onEnd: () {},
                millisecondsAlign: 1800,
                secondsOpacity: 1,
                alignmentX: 0.2,
                alignmentY: finalPageController.alignment,
                opacity: finalPageController.opacity,
                icon: MaterialCommunityIcons.linkedin,
                containerColor: Colors.blue,
                iconColor: Colors.white,
                text: 'Philippe Nau Rosa',
                radius: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
