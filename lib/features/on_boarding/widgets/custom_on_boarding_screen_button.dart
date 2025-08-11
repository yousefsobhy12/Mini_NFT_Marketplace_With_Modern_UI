import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/colors_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/strings_manager.dart';

class CustomOnBoardingScreenButton extends StatelessWidget {
  const CustomOnBoardingScreenButton({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(33),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
        child: TextButton(
          style: TextButton.styleFrom(
            side: BorderSide(color: Color(0xff6B6DCD)),
          ),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 8),
            child: Text(
              StringsManager.onBoardingButtonText,
              style: TextStyle(
                color: ColorsManager.white,
                fontFamily: FontsManager.sfProText,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
