import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';

class AppRecorder {
  static final recorder = FlutterSoundRecorder();
  static final player = AudioPlayer();
}
