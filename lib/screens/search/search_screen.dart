import 'package:flutter/material.dart';
import 'package:trung_son/components/utils.dart';

class SearchScreen extends StatelessWidget {
  static String routeName = "/search";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'search',
        child: Padding(
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0),
            child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,
                        color: Color(getColorHexFromStr('#FEDF62')),
                        size: 30.0),
                    contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                        color: Colors.grey, fontFamily: 'Quicksand'))),
          ),
        ),
      ),
    );
  }
}
