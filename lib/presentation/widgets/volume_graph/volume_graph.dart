import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sound_level_meter/internal/colors.dart';
import 'package:sound_level_meter/presentation/screens/home/home_controller.dart';
import 'package:sound_level_meter/presentation/widgets/volume_graph/volume_column.dart';

class VolumeGraph extends GetView<HomeController> {
  const VolumeGraph({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      margin: EdgeInsets.all(size.width * 0.01),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(controller.db.length,
                  (index) => VolumeColumn(db: controller.db[index])),
            )),
        Container(
          decoration: const BoxDecoration(
            color: AppColors.buttonColor,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          width: size.width * 0.9,
          height: 5,
        )
      ]),
    );
  }
}
