import 'package:flutter/widgets.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:get/get.dart';
import 'package:sound_level_meter/internal/colors.dart';
import 'package:sound_level_meter/internal/recorder.dart';
import 'package:sound_level_meter/presentation/screens/home/home_controller.dart';

class CustomTimer extends GetView<HomeController> {
  const CustomTimer({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        child: StreamBuilder<RecordingDisposition>(
      stream: AppRecorder.recorder.onProgress,
      builder: (context, snapshot) {
        final duration =
            snapshot.hasData ? snapshot.data!.duration : Duration.zero;
        String twoDigits(int n) => n.toString();
        final twoDigitsMinutes = twoDigits(duration.inMinutes.remainder(60));
        final twoDigitsSeconds = twoDigits(duration.inSeconds.remainder(60));
        return Text(
          '${twoDigitsMinutes}:$twoDigitsSeconds',
          style: const TextStyle(
              color: AppColors.textColor,
              fontSize: 50,
              fontWeight: FontWeight.w600),
        );
      },
    ));
  }
}
