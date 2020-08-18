import 'package:flutter/material.dart';
import 'package:trung_son/constants.dart';
import 'package:trung_son/size_config.dart';

class SplashContent extends StatelessWidget {
  final String text, image;
  const SplashContent({Key key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Trung Son",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36.0),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265.0),
          width: getProportionateScreenWidth(235.0),
        )
      ],
    );
  }
}
