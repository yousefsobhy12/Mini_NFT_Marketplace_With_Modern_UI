import 'package:mini_nft_marketplace_with_modern_ui/core/resources/assets_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/strings_manager.dart';

class CategoryModel {
  final String title;
  final String image;

  CategoryModel({required this.title, required this.image});

  static List<CategoryModel> categories = [
    CategoryModel(
      title: StringsManager.category1,
      image: AssetsManager.categoryImage1,
    ),
    CategoryModel(
      title: StringsManager.category2,
      image: AssetsManager.categoryImage2,
    ),
    CategoryModel(
      title: StringsManager.category3,
      image: AssetsManager.categoryImage3,
    ),
  ];
}
