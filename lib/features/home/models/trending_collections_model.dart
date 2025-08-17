import 'package:mini_nft_marketplace_with_modern_ui/core/resources/assets_manager.dart';

class TrendingCollectionsModel {
  final String image;
  final String title;

  TrendingCollectionsModel({required this.image, required this.title});

  static List<TrendingCollectionsModel> list = [
    TrendingCollectionsModel(image: AssetsManager.trend1, title: '3D Art'),
    TrendingCollectionsModel(
      image: AssetsManager.trend2,
      title: 'Abstract Art',
    ),
    TrendingCollectionsModel(
      image: AssetsManager.trend3,
      title: 'Portrait Art',
    ),
    TrendingCollectionsModel(image: AssetsManager.trend4, title: 'Metaverse'),
  ];
}
