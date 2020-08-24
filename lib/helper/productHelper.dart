import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:trung_son/models/product/product.dart';

Future<Product> getProducts({int currentPage, int pageSize}) async {
  final response = await http.get(
      'https://trungson.inapps.technology/rest/default/V1/products?searchCriteria[currentPage]=$currentPage&searchCriteria[pageSize]=$pageSize');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.

    print(response.body);
    return Product.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
