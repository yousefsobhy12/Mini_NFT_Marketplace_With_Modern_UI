import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/assets_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/fonts_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/stats/models/ranking_item_model.dart';

class CustomRankingItemWidget extends StatelessWidget {
  const CustomRankingItemWidget({
    super.key,
    required this.rankingItemModel,
    required this.order,
  });
  final int order;
  final RankingItemModel rankingItemModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              order.toString(),
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontFamily: FontsManager.sfProText,
              ),
            ),
            SizedBox(width: 10),
            Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(rankingItemModel.image),
                ),
              ),
            ),
            SizedBox(width: 15),
            Column(
              spacing: 6,
              children: [
                Text(
                  rankingItemModel.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: FontsManager.sfProText,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'View Info',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontFamily: FontsManager.sfProText,
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          spacing: 6,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              spacing: 6,
              children: [
                SvgPicture.asset(AssetsManager.priceIcon),
                Text(
                  rankingItemModel.price,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: FontsManager.sfProText,
                  ),
                ),
              ],
            ),
            Text(
              '${rankingItemModel.percent.toString()}%',
              style: TextStyle(
                color:rankingItemModel.percent >=0 ? Colors.green : Colors.red,
                fontSize: 14,
                fontFamily: FontsManager.sfProText,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
