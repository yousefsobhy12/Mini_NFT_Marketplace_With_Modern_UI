class TrendingCollectionsModel {
  final String image;
  final String title;

  TrendingCollectionsModel({required this.image, required this.title});
  static List<TrendingCollectionsModel> list = [
    TrendingCollectionsModel(
      image: 'assets/images/trending/t1.jpg',
      title: '3D Art',
    ),
    TrendingCollectionsModel(
      image: 'assets/images/trending/t2.jpg',
      title: 'Abstract Art',
    ),
    TrendingCollectionsModel(
      image: 'assets/images/trending/t3.jpg',
      title: 'Portrait Art',
    ),
    TrendingCollectionsModel(
      image: 'assets/images/trending/t4.jpg',
      title: 'Metaverse',
    ),
  ];
}
