import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/assets_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/on_boarding/widgets/custom_on_boarding_screen_card.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/on_boarding/widgets/custom_on_boarding_screen_header.dart';

class CustomOnBoardingScreenBody extends StatelessWidget {
  const CustomOnBoardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          CustomOnBoardingScreenHeader(),
          Spacer(),
          CustomOnBoardingScreenCard(),
          SizedBox(height: 80),
        ],
      ),
    );
  }
}
