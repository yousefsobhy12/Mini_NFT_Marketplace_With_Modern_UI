import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/colors_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/home/models/trending_collections_model.dart';

class CustomTrendingCollectionsCard extends StatelessWidget {
  const CustomTrendingCollectionsCard({
    super.key,
    required this.trendingCollectionsModel,
  });
  final TrendingCollectionsModel trendingCollectionsModel;
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: Alignment.centerLeft,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(26),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 13, sigmaY: 13),
          child: Container(
            height: 216,
            width: 208,
            color: Colors.white.withOpacity(0.05),
            child: Column(
              children: [
                Container(
                  height: 155,
                  width: 155,
                  margin: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    bottom: 10,
                    right: 34,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(trendingCollectionsModel.image),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        trendingCollectionsModel.title,
                        style: TextStyle(
                          color: ColorsManager.white,
                          fontSize: 14,
                          fontFamily: FontsManager.sfProText,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '❤️ 200',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: FontsManager.sfProText,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
