import 'package:get/route_manager.dart';
import 'package:mortal_kombat/routes/app_routes.dart';
import 'package:mortal_kombat/view/final_page.dart';
import 'package:mortal_kombat/view/home_page.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.HOMEPAGE, page: () => HomePage()),
    GetPage(name: Routes.FINALPAGE, page: () => FinalPage()),
  ];
}
