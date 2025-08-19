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
      image: 'assets/images/stats_screen/1.jpg',
      title: 'Azumi',
      price: '200055.02',
      percent: 3.99,
    ),
    RankingItemModel(
      image: 'assets/images/stats_screen/2.jpg',
      title: 'Hape Prime',
      price: '180055.45',
      percent: 33.79,
    ),
    RankingItemModel(
      image: 'assets/images/stats_screen/3.jpg',
      title: 'Cryoto',
      price: '90055.62',
      percent: -6.56,
    ),
    RankingItemModel(
      image: 'assets/images/stats_screen/4.jpg',
      title: 'Ape Club',
      price: '88055.12',
      percent: 3.99,
    ),
    RankingItemModel(
      image: 'assets/images/stats_screen/5.jpg',
      title: 'Bat',
      price: '10055.06',
      percent: 3.99,
    ),
    RankingItemModel(
      image: 'assets/images/stats_screen/6.jpg',
      title: 'Mutant',
      price: '9095.27',
      percent: 3.99,
    ),
    RankingItemModel(
      image: 'assets/images/stats_screen/7.jpg',
      title: 'Metaverse',
      price: '10055.02',
      percent: 3.99,
    ),
    RankingItemModel(
      image: 'assets/images/stats_screen/8.jpg',
      title: 'Mountain',
      price: '8055.73',
      percent: 3.99,
    ),
    RankingItemModel(
      image: 'assets/images/stats_screen/9.jpg',
      title: 'Mutant Ape',
      price: '5055.73',
      percent: 3.99,
    ),
    RankingItemModel(
      image: 'assets/images/stats_screen/10.jpg',
      title: 'The Sandbox',
      price: '1055.02',
      percent: -1.99,
    ),
  ];
}
