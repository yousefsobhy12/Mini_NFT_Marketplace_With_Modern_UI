import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/home/models/category_model.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/home/models/top_seller_model.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/home/models/trending_collections_model.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/home/widgets/custom_category_home_screen.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/home/widgets/custom_top_seller_card.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/home/widgets/custom_trending_collections_card.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/home/widgets/custom_trending_collections_title_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<TrendingCollectionsModel> trendingCollectionsList =
      TrendingCollectionsModel.list;
  List<TopSellerModel> topSellerList = TopSellerModel.topSellerList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              SizedBox(
                height: 180,
                child: ListView.separated(
                  itemCount: CategoryModel.categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CustomCategoryCardHomeScreen(
                      categoryModel: CategoryModel.categories[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10);
                  },
                ),
              ),
              SizedBox(height: 30),
              CustomTitleWidget(title: StringsManager.trendingCollectionsTitle),
              SizedBox(height: 8),
              SizedBox(
                height: 216,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: trendingCollectionsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomTrendingCollectionsCard(
                      trendingCollectionsModel: trendingCollectionsList[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 10);
                  },
                ),
              ),
              SizedBox(height: 30),
              CustomTitleWidget(title: StringsManager.topSellerTitle),
              SizedBox(height: 8),

              SizedBox(
                height: 262,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: topSellerList.length,
                  itemBuilder: (context, index) {
                    return CustomTopSellerCard(model: topSellerList[index]);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10);
                  },
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
