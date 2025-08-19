import 'package:mini_nft_marketplace_with_modern_ui/core/resources/assets_manager.dart';

class RankingItemModel {
  final String image;
  final String title;
  final String price;
  final double percent;

  RankingItemModel({
    required this.image,
    required this.title,
    required this.price,
    required this.percent,
  });

  static List<RankingItemModel> rankingItemList = [
    RankingItemModel(
      image: AssetsManager.rankingItem1,
      title: 'Azumi',
      price: '200055.02',
      percent: 3.99,
    ),
    RankingItemModel(
      image: AssetsManager.rankingItem2,
      title: 'Hape Prime',
      price: '180055.45',
      percent: 33.79,
    ),
    RankingItemModel(
      image: AssetsManager.rankingItem3,
      title: 'Cryoto',
      price: '90055.62',
      percent: -6.56,
    ),
    RankingItemModel(
      image: AssetsManager.rankingItem4,
      title: 'Ape Club',
      price: '88055.12',
      percent: 3.99,
    ),
    RankingItemModel(
      image: AssetsManager.rankingItem5,
      title: 'Bat',
      price: '10055.06',
      percent: 3.99,
    ),
    RankingItemModel(
      image: AssetsManager.rankingItem6,
      title: 'Mutant',
      price: '9095.27',
      percent: 3.99,
    ),
    RankingItemModel(
      image: AssetsManager.rankingItem7,
      title: 'Metaverse',
      price: '10055.02',
      percent: 3.99,
    ),
    RankingItemModel(
      image: AssetsManager.rankingItem8,
      title: 'Mountain',
      price: '8055.73',
      percent: 3.99,
    ),
    RankingItemModel(
      image: AssetsManager.rankingItem9,
      title: 'Mutant Ape',
      price: '5055.73',
      percent: 3.99,
    ),
    RankingItemModel(
      image: AssetsManager.rankingItem10,
      title: 'The Sandbox',
      price: '1055.02',
      percent: -1.99,
    ),
  ];
}
