import 'package:get/get.dart';

class HomeController extends GetxController {
  var path;
  RxList db = [].obs;
  double condition = 0.0;
  void soundGraphList(db) {
    final HomeController homeController = Get.put(HomeController());

    homeController.db.add(db);
    if (homeController.db.length > 9) {
      homeController.db.removeAt(0);
    }
    print(homeController.db.toString());
    update();
  }

  void clearSoundGraphList() {
    db.clear();
    condition = 0.0;
    update();
  }
}
