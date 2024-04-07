import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_level_meter/presentation/screens/home/home.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
