import 'package:flutter/material.dart';

import '../../../core/resources/fonts_manager.dart';

class CustomTabBarItem extends StatelessWidget {
  const CustomTabBarItem({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 4,
        children: [
          Icon(icon, color: Colors.grey, size: 26),
          Text(
            title,
            style: TextStyle(
              fontSize: 17,
              fontFamily: FontsManager.sfProText,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
