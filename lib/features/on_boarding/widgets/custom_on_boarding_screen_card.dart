import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/colors_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/on_boarding/widgets/custom_on_boarding_screen_button.dart';

class CustomOnBoardingScreenCard extends StatelessWidget {
  const CustomOnBoardingScreenCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(26),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 13, sigmaY: 13),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.89,
          color: const Color.fromARGB(57, 255, 255, 255),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Text(
                  StringsManager.onBoardingCardHeader,
                  style: TextStyle(
                    fontFamily: FontsManager.sfProDisplay,
                    fontWeight: FontWeight.w900,
                    color: ColorsManager.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  StringsManager.onBoardingCardDescription,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: FontsManager.sfProText,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Color(0xffB9B9D5),
                  ),
                ),
                SizedBox(height: 30),
                CustomOnBoardingScreenButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
