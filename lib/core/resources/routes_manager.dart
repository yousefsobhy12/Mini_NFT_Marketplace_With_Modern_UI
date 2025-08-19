import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/home/screens/home.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/home/screens/home_screen.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/on_boarding/screens/on_boarding_screen.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/stats/screens/stats_screen.dart';

class RoutesManager {
  static Map<String, Widget Function(BuildContext context)> routes = {
    RoutesNames.kHome: (context) => Home(),
    RoutesNames.kOnBoardingScreen: (context) => OnBoardingScreen(),
    RoutesNames.kHomeScreen: (context) => HomeScreen(),
    RoutesNames.kStatsScreen: (context) => StatsScreen(),
  };
}

class RoutesNames {
  static const String kHome = 'Home';
  static const String kOnBoardingScreen = 'onBoardingScreen';
  static const String kHomeScreen = 'HomeScreen';
  static const String kStatsScreen = 'StatsScreen';
}
