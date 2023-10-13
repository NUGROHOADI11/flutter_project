import 'package:flutter/material.dart';
import 'controller/welcome_controller.dart';
import 'view/welcome_screen.dart';

void main() {
  final controller = WelcomeScreenController();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(controller: controller),
    ),
  );
}
