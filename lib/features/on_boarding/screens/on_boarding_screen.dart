import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/assets_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/colors_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/strings_manager.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AssetsManager.onBoardingBackgroundImage),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 80),
            Text(
              StringsManager.onBoardingScreenHeader,
              style: TextStyle(
                fontFamily: FontsManager.sfProDisplay,
                fontWeight: FontWeight.w900,
                fontSize: 36,
                color: ColorsManager.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
