import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/home/screens/home_screen.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/on_boarding/screens/on_boarding_screen.dart';

class RoutesManager {
  static Map<String, Widget Function(BuildContext context)> routes = {
    RoutesNames.kOnBoardingScreen: (context) => OnBoardingScreen(),
    RoutesNames.kHomeScreen: (context) => HomeScreen(),
  };
}

class RoutesNames {
  static const String kOnBoardingScreen = 'onBoardingScreen';
  static const String kHomeScreen = 'HomeScreen';
}
