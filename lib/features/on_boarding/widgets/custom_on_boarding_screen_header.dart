import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/colors_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/strings_manager.dart';

class CustomOnBoardingScreenHeader extends StatelessWidget {
  const CustomOnBoardingScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      StringsManager.onBoardingHeader,
      style: TextStyle(
        fontFamily: FontsManager.sfProDisplay,
        fontWeight: FontWeight.w900,
        fontSize: 36,
        color: ColorsManager.white,
      ),
    );
  }
}
