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
      image: 'assets/images/top_seller/t1.jpg',
      title: 'Wave',
      subTitle: 'wav2 #5672',
      price: 0.018,
      likes: 5160,
    ),
    TopSellerModel(
      image: 'assets/images/top_seller/t2.jpg',
      title: 'Abstract Pink',
      subTitle: 'abstract #2538',
      price: 0.906,
      likes: 1800,
    ),
    TopSellerModel(
      image: 'assets/images/top_seller/t3.jpg',
      title: 'Wave',
      subTitle: 'wavepi #5267',
      price: 0.26,
      likes: 2030,
    ),
    TopSellerModel(
      image: 'assets/images/top_seller/t4.jpg',
      title: 'Abstract23',
      subTitle: 'abstract #2038',
      price: 0.246,
      likes: 2060,
    ),
    TopSellerModel(
      image: 'assets/images/top_seller/t5.jpg',
      title: 'Music',
      subTitle: 'mali #7890',
      price: 0.46,
      likes: 200,
    ),
    TopSellerModel(
      image: 'assets/images/top_seller/t6.jpg',
      title: 'Ball',
      subTitle: 'baalli #4890',
      price: 0.03,
      likes: 200,
    ),
    TopSellerModel(
      image: 'assets/images/top_seller/t7.jpg',
      title: 'Ring',
      subTitle: 'Ring #7288',
      price: 0.106,
      likes: 200,
    ),
    TopSellerModel(
      image: 'assets/images/top_seller/t8.jpg',
      title: 'Beer',
      subTitle: 'Beer #1238',
      price: 0.26,
      likes: 200,
    ),
  ];
}
