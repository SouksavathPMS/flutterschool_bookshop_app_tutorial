import 'package:flutter/material.dart';
import 'package:flutterschool_bookshop_app_tutorial/constants/constant_colors.dart';
import 'package:flutterschool_bookshop_app_tutorial/screens/category_screen.dart';
import 'package:flutterschool_bookshop_app_tutorial/screens/favorite_screen.dart';
import 'package:flutterschool_bookshop_app_tutorial/screens/home_screen.dart';
import 'package:flutterschool_bookshop_app_tutorial/screens/user_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NavigatorAction extends StatefulWidget {
  const NavigatorAction({super.key});

  @override
  State<NavigatorAction> createState() => _NavigatorActionState();
}

class _NavigatorActionState extends State<NavigatorAction> {
  var _currentIndex = 0;
  final List<Widget> _currentPage = [
    const HomeScreen(),
    const CategoryScreen(),
    const FavoriteScreen(),
    const UserScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentPage.elementAt(_currentIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) {
            setState(() => _currentIndex = i);
          },
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: const Icon(Icons.home_outlined),
              activeIcon: const Icon(Icons.home),
              title: const Text(
                "ໜ້າຫຼັກ",
                style: TextStyle(fontFamily: "NotoSansLao"),
              ),
              selectedColor: ConstantColors.primaryColor,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: const Icon(Icons.category_outlined),
              activeIcon: const Icon(Icons.category),
              title: const Text(
                "ໝວດໝູ່",
                style: TextStyle(fontFamily: "NotoSansLao"),
              ),
              selectedColor: ConstantColors.primaryColor,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: const Icon(Icons.favorite_outline),
              activeIcon: const Icon(Icons.favorite),
              title: const Text(
                "ທີ່ທ່ານມັກ",
                style: TextStyle(fontFamily: "NotoSansLao"),
              ),
              selectedColor: ConstantColors.primaryColor,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(Icons.person_outline),
              activeIcon: const Icon(Icons.person),
              title: const Text(
                "ຜູ້ໃຊ້ງານ",
                style: TextStyle(fontFamily: "NotoSansLao"),
              ),
              selectedColor: ConstantColors.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
