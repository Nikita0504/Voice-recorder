import 'package:flutter/material.dart';
import 'package:sound_level_meter/internal/colors.dart';

class IntermediateButton extends StatelessWidget {
  final Icon icon;
  final GestureTapCallback onPressed;

  const IntermediateButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(size.width * 0.01),
        decoration: const BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        width: size.width * 0.1,
        height: size.height * 0.05,
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
