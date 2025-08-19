import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/stats/widgets/custom_stats_drop_down_list.dart';
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
            StringsManager.stats,
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
                title: StringsManager.ranking,
                icon: Icons.bar_chart_outlined,
              ),
              CustomTabBarItem(
                title: StringsManager.activity,
                icon: Icons.timeline_rounded,
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Row(
                    spacing: 20,
                    children: [
                      CustomStatsDropDownList(
                        title: StringsManager.allCategories,
                        icon: Icons.grid_view_outlined,
                      ),
                      CustomStatsDropDownList(
                        title: StringsManager.allChains,
                        icon: Icons.link,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(child: Text(StringsManager.activity)),
          ],
        ),
      ),
    );
  }
}
