import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/colors_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';

class CustomTopSellerCard extends StatelessWidget {
  const CustomTopSellerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(26),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 13, sigmaY: 13),
        child: Container(
          color: const Color.fromARGB(57, 255, 255, 255),
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
                      image: AssetImage('assets/images/top_seller/t1.jpg'),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Wave',
                  style: TextStyle(
                    color: ColorsManager.white,
                    fontFamily: FontsManager.sfProText,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'wav2 #5672',
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
                    SvgPicture.asset('assets/images/icon.svg'),
                    Text(
                      '0.018',
                      style: TextStyle(
                        color: ColorsManager.white,
                        fontFamily: FontsManager.sfProText,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '❤️ 5160',
                      style: TextStyle(
                        color: Color(0xffACA3BB),
                        fontFamily: FontsManager.sfProText,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
