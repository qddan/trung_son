import 'package:flutter/material.dart';
import 'package:trung_son/screens/account/account_page_screen.dart';
import 'package:trung_son/screens/cart/cart_screen.dart';
import 'package:trung_son/screens/home/home_screen.dart';
import 'package:trung_son/screens/sign_in/sign_in_screen.dart';
import 'package:trung_son/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (content) => SplashScreen(),
  SignInScreen.routeName: (content) => SignInScreen(),
  HomeScreen.routeName: (content) => HomeScreen(),
  AccountPageScreen.routeName: (content) => AccountPageScreen(),
  CartScreen.routeName: (content) => CartScreen(),
};
