import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mortal_kombat/routes/app_pages.dart';
import 'package:mortal_kombat/routes/app_routes.dart';
import 'package:mortal_kombat/view/home_page.dart';

void main() {
  runApp(MortalKombat());
}

class MortalKombat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mortal Kombat',
      getPages: AppPages.routes,
      customTransition: Get.customTransition,
      transitionDuration: Get.defaultTransitionDuration,
      defaultTransition: Transition.fadeIn,
      initialRoute: Routes.HOMEPAGE,
      home: HomePage(),
    );
  }
}
