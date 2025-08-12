import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/home/models/category_model.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/home/widgets/custom_category_home_screen.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<CategoryModel> categories = [
    CategoryModel(title: 'Music', image: 'assets/images/category_image3.png'),
    CategoryModel(title: 'Art', image: 'assets/images/category_image1.png'),
    CategoryModel(
      title: 'Virtual Worlds',
      image: 'assets/images/category_image2.png',
    ),
  ];
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
      body: Column(
        children: [
          SizedBox(height: 20),
          SizedBox(
            height: 180,
            child: ListView.separated(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomCategoryCardHomeScreen(
                  categoryModel: categories[index],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 10);
              },
            ),
          ),
        ],
      ),
    );
  }
}
