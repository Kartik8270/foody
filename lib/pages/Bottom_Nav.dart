import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:foody/pages/home.dart';
import 'package:foody/pages/order.dart';
import 'package:foody/pages/profile.dart';
import 'package:foody/pages/wallet.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int currentTabIndex = 0;

  late List<Widget> pages;

  late Widget currentPage;

  late HomePage homepage;
  late Order order;
  late Wallet wallet;
  late Profile profile;

  @override
  void initState() {

    homepage = HomePage();
    order = Order();
    wallet = Wallet();
    profile = Profile();

    pages = [
      homepage,
      order,
      wallet,
      profile,
    ];

    currentPage = homepage;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      bottomNavigationBar: CurvedNavigationBar(

        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,

        animationDuration: Duration(milliseconds: 500),

        onTap: (index) {
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },

        items: const [

          Icon(Icons.home_outlined, color: Colors.white),

          Icon(Icons.shopping_cart_outlined, color: Colors.white),

          Icon(Icons.wallet_outlined, color: Colors.white),

          Icon(Icons.person_outline_outlined, color: Colors.white),

        ],
      ),

      body: pages[currentTabIndex],
    );
  }
}