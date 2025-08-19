import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/colors_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';

class CustomStatsDropDownList extends StatelessWidget {
  const CustomStatsDropDownList({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 13, sigmaY: 13),
          child: AspectRatio(
            aspectRatio: 164 / 44,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                border: Border.all(width: 2, color: Color(0xff39205D)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, color: Colors.grey),
                  SizedBox(width: 4),
                  Text(
                    title,
                    style: TextStyle(
                      color: ColorsManager.white,
                      fontSize: 15,
                      fontFamily: FontsManager.sfProText,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded, color: Colors.grey),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
