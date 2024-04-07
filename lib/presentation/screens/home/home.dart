import 'package:flutter/material.dart';
import 'package:sound_level_meter/domain/recording/set_record.dart';
import 'package:sound_level_meter/domain/recording/stop_recoding.dart';
import 'package:sound_level_meter/internal/colors.dart';
import 'package:sound_level_meter/domain/recording/start_recoding.dart';
import 'package:sound_level_meter/presentation/widgets/control_button.dart';
import 'package:sound_level_meter/presentation/widgets/intermediate_button.dart';
import 'package:sound_level_meter/presentation/widgets/timer.dart';
import 'package:sound_level_meter/presentation/widgets/volume_graph/volume_graph.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Stack(
          children: [
            const Align(
              alignment: Alignment.center,
              child: CustomTimer(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const VolumeGraph(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ControlButton(
                          icon: const Icon(
                            Icons.play_arrow,
                            color: Colors.green,
                          ),
                          onPressed: () async {
                            await startRecoding();
                          },
                        ),
                        ControlButton(
                          icon: const Icon(
                            Icons.stop,
                            color: Colors.red,
                          ),
                          onPressed: () async {
                            await stopRecoding();
                          },
                        ),
                        IntermediateButton(
                          icon: const Icon(
                            Icons.audiotrack_sharp,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            listenRecording();
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
