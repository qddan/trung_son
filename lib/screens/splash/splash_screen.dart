import 'package:flutter/material.dart';
import 'package:trung_son/screens/splash/components/body.dart';
import 'package:trung_son/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "Splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
