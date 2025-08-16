import 'package:flutter/widgets.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';

class CustomTrendingCollectionsTitleWidget extends StatelessWidget {
  const CustomTrendingCollectionsTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Align(
        alignment: AlignmentGeometry.topLeft,
        child: Text(
          'Trending collections',
          style: TextStyle(
            fontSize: 20,
            fontFamily: FontsManager.sfProDisplay,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
