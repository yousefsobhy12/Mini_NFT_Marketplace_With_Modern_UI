import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/home/screens/home_screen.dart';
import 'package:mini_nft_marketplace_with_modern_ui/features/stats/screens/stats_screen.dart';
import '../widgets/custom_bottom_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List<Widget> screens = [HomeScreen(), StatsScreen()];
int currentScreen = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[currentScreen],
      bottomNavigationBar: CustomBottomNavBar(
        homeTap: () {
          currentScreen = 0;
          setState(() {});
        },
        statsTap: () {
          currentScreen = 1;
          setState(() {});
        },
      ),
      floatingActionButton: SizedBox(
        height: 80,
        width: 80,
        child: FloatingActionButton(
          backgroundColor: Color.fromARGB(78, 247, 222, 241),
          shape: StarBorder.polygon(sides: 6, pointRounding: 0.4),
          onPressed: () {},
          child: Icon(
            Icons.add_rounded,
            color: Colors.white,
            size: 50,
            weight: 20,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
