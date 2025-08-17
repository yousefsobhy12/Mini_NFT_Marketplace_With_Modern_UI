import 'package:mini_nft_marketplace_with_modern_ui/core/resources/assets_manager.dart';

class TopSellerModel {
  final String image;
  final String title;
  final String subTitle;
  final double price;
  final int likes;

  TopSellerModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.likes,
  });

  static List<TopSellerModel> topSellerList = [
    TopSellerModel(
      image: AssetsManager.top1,
      title: 'Wave',
      subTitle: 'wav2 #5672',
      price: 0.018,
      likes: 5160,
    ),
    TopSellerModel(
      image: AssetsManager.top2,
      title: 'Abstract Pink',
      subTitle: 'abstract #2538',
      price: 0.906,
      likes: 1800,
    ),
    TopSellerModel(
      image: AssetsManager.top3,
      title: 'Wave',
      subTitle: 'wavepi #5267',
      price: 0.26,
      likes: 2030,
    ),
    TopSellerModel(
      image: AssetsManager.top4,
      title: 'Abstract23',
      subTitle: 'abstract #2038',
      price: 0.246,
      likes: 2060,
    ),
    TopSellerModel(
      image: AssetsManager.top5,
      title: 'Music',
      subTitle: 'mali #7890',
      price: 0.46,
      likes: 200,
    ),
    TopSellerModel(
      image: AssetsManager.top6,
      title: 'Ball',
      subTitle: 'baalli #4890',
      price: 0.03,
      likes: 200,
    ),
    TopSellerModel(
      image: AssetsManager.top7,
      title: 'Ring',
      subTitle: 'Ring #7288',
      price: 0.106,
      likes: 200,
    ),
    TopSellerModel(
      image: AssetsManager.top8,
      title: 'Beer',
      subTitle: 'Beer #1238',
      price: 0.26,
      likes: 200,
    ),
  ];
}
