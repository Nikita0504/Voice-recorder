import 'package:flutter/widgets.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sound_level_meter/internal/recorder.dart';

Future initRecorder() async {
  WidgetsFlutterBinding.ensureInitialized();
  final status = await Permission.microphone.request();
  if (status != PermissionStatus.granted) {
    throw 'Microphone permission not granted';
  }
  await AppRecorder.recorder.openRecorder();

  AppRecorder.recorder
      .setSubscriptionDuration(const Duration(milliseconds: 250));
}
