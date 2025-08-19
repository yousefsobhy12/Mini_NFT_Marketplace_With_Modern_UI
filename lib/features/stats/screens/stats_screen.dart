import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/colors_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';

import '../widgets/custom_tab_bar_item.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Stats',
            style: TextStyle(
              fontSize: 20,
              fontFamily: FontsManager.sfProDisplay,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.pending_outlined, color: Color(0xff9993A6)),
            ),
          ],
          bottom: TabBar(
            tabs: [
              CustomTabBarItem(
                title: 'Ranking',
                icon: Icons.bar_chart_outlined,
              ),
              CustomTabBarItem(title: 'Activity', icon: Icons.timeline_rounded),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Ranking')),
            Center(child: Text('Activity')),
          ],
        ),
      ),
    );
  }
}
