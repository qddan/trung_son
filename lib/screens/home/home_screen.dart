import 'package:flutter/material.dart';
import 'package:trung_son/constants.dart';
import 'package:trung_son/screens/account/account_page_screen.dart';
import 'package:trung_son/screens/cart/cart_screen.dart';
import 'package:trung_son/screens/home/components/body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Body(),
    Body(),
    CartScreen(),
    AccountPageScreen()
  ];
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: _children[_currentIndex],
          bottomNavigationBar: Material(
            color: Colors.white,
            child: TabBar(
              controller: controller,
              indicatorColor: kPrimaryColor,
              onTap: onTabTapped,
              tabs: [
                Tab(
                    icon: Icon(Icons.event_seat,
                        color:
                            _currentIndex == 0 ? kPrimaryColor : Colors.grey)),
                Tab(
                    icon: Icon(Icons.favorite,
                        color:
                            _currentIndex == 1 ? kPrimaryColor : Colors.grey)),
                Tab(
                    icon: Icon(Icons.shopping_cart,
                        color:
                            _currentIndex == 2 ? kPrimaryColor : Colors.grey)),
                Tab(
                    icon: Icon(Icons.person_outline,
                        color:
                            _currentIndex == 3 ? kPrimaryColor : Colors.grey)),
              ],
            ),
          )),
    );
  }

  void onTabTapped(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
