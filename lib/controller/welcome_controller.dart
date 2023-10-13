import 'package:flutter/material.dart';

import '../view/home_screen.dart';

class WelcomeScreenController {
  final PageController _pageController = PageController();

  void dispose() {
    _pageController.dispose();
  }

  void navigateToHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }
}
