import 'package:get/get.dart';
import 'package:sound_level_meter/presentation/screens/home/home_controller.dart';
import 'recording/init_recorder.dart';

class GlobalController extends GetxController {
  final HomeController homeController = Get.put(HomeController());

  @override
  void onInit() {
    initRecorder();
    super.onInit();
  }
}
