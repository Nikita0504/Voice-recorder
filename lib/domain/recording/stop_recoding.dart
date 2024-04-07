import 'package:get/get.dart';
import 'package:sound_level_meter/internal/recorder.dart';
import '../../presentation/screens/home/home_controller.dart';

Future stopRecoding() async {
  final HomeController homeController = Get.put(HomeController());
  homeController.clearSoundGraphList();
  homeController.path = '${await AppRecorder.recorder.stopRecorder()}';
}
