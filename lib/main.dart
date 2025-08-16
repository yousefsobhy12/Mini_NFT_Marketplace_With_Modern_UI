import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/colors_manager.dart';
import 'package:mini_nft_marketplace_with_modern_ui/core/resources/routes_manager.dart';

void main() {
  runApp(NFTMarketplace());
}

class NFTMarketplace extends StatelessWidget {
  const NFTMarketplace({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: ColorsManager.kScaffoldBackgroundColor),
        scaffoldBackgroundColor: ColorsManager.kScaffoldBackgroundColor,
      ),
      routes: RoutesManager.routes,
      initialRoute: RoutesNames.kHomeScreen,
    );
  }
}
