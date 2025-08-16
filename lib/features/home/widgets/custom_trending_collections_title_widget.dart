import 'package:flutter/widgets.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/colors_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';

class CustomTitleWidget extends StatelessWidget {
  const CustomTitleWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Align(
        alignment: AlignmentGeometry.topLeft,
        child: Text(
          title,
          style: TextStyle(
            color: ColorsManager.white,
            fontSize: 20,
            fontFamily: FontsManager.sfProDisplay,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
