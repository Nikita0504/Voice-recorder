import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_level_meter/internal/application.dart';
import 'domain/global_controller.dart';

void main() {
  Get.put(GlobalController());
  runApp(const Application());
}
