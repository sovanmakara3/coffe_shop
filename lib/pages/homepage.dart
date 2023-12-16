import 'package:cafe_shop/components/bottom_nav_bar.dart';
import 'package:cafe_shop/const.dart';
import 'package:cafe_shop/pages/cart_page.dart';
import 'package:flutter/material.dart';

import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // navigate bottom bar
  int _selectIndex = 0;
  void navigateBottomBar(int index){
    setState(() {
      _selectIndex = index;
    });
  }

  //pages
  final List<Widget> _page = [
    // shop page
    ShopPage(),



    //cart page
    CartPage(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _page[_selectIndex],
    );
  }
}
