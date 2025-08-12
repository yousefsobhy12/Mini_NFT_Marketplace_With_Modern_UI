import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/strings_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          StringsManager.homeScreenAppBarTitle,
          style: TextStyle(
            fontFamily: FontsManager.sfProDisplay,
            fontWeight: FontWeight.w900,
            fontSize: 28,
          ),
        ),
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.circular(26),
        child: Stack(
          children: [
            // Background image
            Image.asset(
              'assets/images/category_image1.png',
              width: 280,
              height: 180,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.transparent.withOpacity(0.3),
                        ],
                        stops: [0, 1],
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Art',
                      style: const TextStyle(
                        fontSize: 20,
                        fontFamily: FontsManager.sfProDisplay,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
