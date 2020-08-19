import 'package:flutter/material.dart';
import 'package:trung_son/screens/sign_in/componets/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Body(),
    );
  }
}
