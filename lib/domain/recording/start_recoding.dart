import 'package:get/get.dart';
import 'package:sound_level_meter/internal/recorder.dart';
import 'package:sound_level_meter/presentation/screens/home/home_controller.dart';

Future startRecoding() async {
  await AppRecorder.recorder.startRecorder(toFile: 'audio');
  final HomeController homeController = Get.put(HomeController());
  AppRecorder.recorder.onProgress?.listen((e) {
    double? decibels = e.decibels;
    if (e.decibels != homeController.condition) {
      homeController.soundGraphList(decibels);
      homeController.condition = decibels!;
    }
  });
}
