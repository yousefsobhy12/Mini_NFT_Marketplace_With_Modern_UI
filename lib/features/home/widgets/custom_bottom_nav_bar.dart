import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/resources/assets_manager.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key, this.homeTap, this.statsTap});

  final void Function()? homeTap;
  final void Function()? statsTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
        child: Container(
          height: 100,
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.white.withOpacity(0.05),
          child: Row(
            spacing: 30,
            children: [
              IconButton(
                onPressed: homeTap,
                icon: SvgPicture.asset(AssetsManager.homeIcon, height: 27),
              ),
              IconButton(
                onPressed: statsTap,
                icon: SvgPicture.asset(AssetsManager.statsIcon, height: 27),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AssetsManager.searchIcon, height: 27),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AssetsManager.profileIcon, height: 27),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
