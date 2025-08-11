import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/on_boarding/screens/on_boarding_screen.dart';

class RoutesManager {
  static Map<String, Widget Function(BuildContext context)> routes = {
    RoutesNames.kOnBoardingScreen: (context) => OnBoardingScreen(),
  };
}

class RoutesNames {
  static const String kOnBoardingScreen = 'onBoardingScreen';
}
