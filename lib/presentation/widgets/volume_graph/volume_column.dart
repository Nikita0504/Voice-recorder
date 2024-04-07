import 'package:flutter/widgets.dart';
import 'package:sound_level_meter/internal/colors.dart';

class VolumeColumn extends StatelessWidget {
  final db;
  const VolumeColumn({required this.db});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = db;
    return Container(
      width: size.width * 0.1,
      height: height,
      decoration: const BoxDecoration(
        color: AppColors.buttonColor,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );
  }
}
