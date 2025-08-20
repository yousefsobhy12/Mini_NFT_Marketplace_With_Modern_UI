import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/assets_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/colors_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/home/models/top_seller_model.dart';

class CustomTopSellerCard extends StatelessWidget {
  const CustomTopSellerCard({super.key, required this.model});

  final TopSellerModel model;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(26),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 13, sigmaY: 13),
        child: Container(
          height: 262,
          width: 175,
          color: Colors.white.withOpacity(0.05),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 155,
                  width: 155,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusGeometry.circular(22),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(model.image),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  model.title,
                  style: TextStyle(
                    color: ColorsManager.white,
                    fontFamily: FontsManager.sfProText,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  model.subTitle,
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xffACA3BB),
                    fontFamily: FontsManager.sfProText,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  spacing: 6,
                  children: [
                    SvgPicture.asset(AssetsManager.priceIcon),
                    Text(
                      model.price.toString(),
                      style: TextStyle(
                        color: ColorsManager.white,
                        fontFamily: FontsManager.sfProText,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '❤️ ${model.likes}',
                      style: TextStyle(
                        color: Color(0xffACA3BB),
                        fontFamily: FontsManager.sfProText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
