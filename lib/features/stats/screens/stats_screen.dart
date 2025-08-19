import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/stats/models/ranking_item_model.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/stats/widgets/custom_ranking_item_widget.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/stats/widgets/custom_stats_drop_down_list.dart';
import '../widgets/custom_tab_bar_item.dart';

class StatsScreen extends StatelessWidget {
  StatsScreen({super.key});
  final List<RankingItemModel> rankingList = RankingItemModel.rankingItemList;
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
              color: Colors.white,
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
            Stack(
              children: [
                Center(child: Image.asset('assets/images/ellipse.png')),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
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
                      SliverToBoxAdapter(child: SizedBox(height: 30)),
                      SliverFillRemaining(
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(26),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 13, sigmaY: 13),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(27, 255, 255, 255),
                                border: Border.all(
                                  width: 2,
                                  color: Color(0xff472C7A),
                                ),
                              ),
                              // child: CustomRankingItemWidget(),
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Expanded(
                                    child: ListView.separated(
                                      physics: BouncingScrollPhysics(),
                                      itemCount: rankingList.length,
                                      itemBuilder: (context, index) {
                                        return CustomRankingItemWidget(
                                          rankingItemModel: rankingList[index],
                                          order: index + 1,
                                        );
                                      },
                                      separatorBuilder: (context, index) {
                                        return SizedBox(height: 20);
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(child: Text(StringsManager.activity)),
          ],
        ),
      ),
    );
  }
}
