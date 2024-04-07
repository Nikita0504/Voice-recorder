import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:sound_level_meter/internal/recorder.dart';
import '../../presentation/screens/home/home_controller.dart';

Future listenRecording() async {
  final HomeController homeController = Get.put(HomeController());
  await AppRecorder.player.play(DeviceFileSource(homeController.path));
}
