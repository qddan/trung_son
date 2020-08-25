import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:trung_son/models/product/items.dart';
import 'package:trung_son/models/product/product.dart';

class Notifier extends ValueNotifier<List<Items>> {
  Notifier() : super(null);

  int _pageNumber = 1;
  bool _hasMoreItem = true;
  int _batchesOf = 5;
  final String _apiUrl =
      'https://trungson.inapps.technology/rest/default/V1/products';
  List<Items> _listItem;
  bool _loading = false;

  @override
  List<Items> get value => _value;
  List<Items> _value;
  @override
  set value(List<Items> newValue) {
    _value = newValue;
    notifyListeners();
  }

  Future<void> reload() async {
    _listItem = <Items>[];
    _pageNumber = 1;
    await httpGetItem(_pageNumber);
  }

  Future<void> getMore() async {
    if (_hasMoreItem && !_loading) {
      _loading = true;
      await httpGetItem(_pageNumber);
      _loading = false;
    }
  }

  Future<void> httpGetItem(int page) async {
    _listItem ??= <Items>[];
    int pageNumber = page;
    while (_hasMoreItem && (pageNumber - page) < _batchesOf) {
      http.Response res = await http.get(
          '$_apiUrl?searchCriteria[currentPage]=$pageNumber&searchCriteria[pageSize]=4');

      Product product = Product.fromJson(json.decode(res.body));
      List<Items> items = product.items;
      print('res $items');
      product.items.length > 0 ? _listItem.addAll(items) : _hasMoreItem = false;
      pageNumber++;
    }

    _pageNumber = pageNumber;
    value = _listItem;
  }
}
