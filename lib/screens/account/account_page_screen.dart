import 'package:flutter/material.dart';
import 'package:trung_son/screens/account/components/body.dart';

class AccountPageScreen extends StatelessWidget {
  static String routeName = "/account_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
