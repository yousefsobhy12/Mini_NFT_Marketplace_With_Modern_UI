import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/home/widgets/custom_category_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          StringsManager.homeScreenAppBarTitle,
          style: TextStyle(
            fontFamily: FontsManager.sfProDisplay,
            fontWeight: FontWeight.w900,
            fontSize: 28,
          ),
        ),
      ),
      body: CustomCategoryCardHomeScreen(
        title: 'Art',
        image: 'assets/images/category_image1.png',
      ),
    );
  }
}
