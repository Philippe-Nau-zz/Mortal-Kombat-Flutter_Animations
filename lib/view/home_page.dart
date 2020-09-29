import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mortal_kombat/controller/character_controller.dart';
import 'package:mortal_kombat/data/character_data.dart';
import 'package:mortal_kombat/model/character.dart';
import 'package:mortal_kombat/widgets/iten_listview.dart';

class HomePage extends StatelessWidget {
  final List<Character> itens = DUMMY_DATA;
  final characterController = Get.put(CharacterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CharacterController>(
        init: CharacterController(),
        builder: (characterCrontroller) => Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.grey[900],
              child: ItemPage(
                clickButton: () {
                  characterController.changeCharacter(itens.length);
                },
                name: itens[characterController.index].name,
                about: itens[characterController.index].about,
                image: itens[characterController.index].image,
                color: itens[characterController.index].color,
                gradientColor: itens[characterController.index].gradientColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
