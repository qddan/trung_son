import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:trung_son/models/products_root.dart';

class Products {
  ProductRoot productRoot;

  Future<void> getProducts() async {
    String url =
        "https://trungson.inapps.technology/rest/default/V1/products?searchCriteria[currentPage]=1&searchCriteria[pageSize]=10";

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    print("jsonData $jsonData");
    if (jsonData['items'].length > 0) {
      print("jsonData items");
    }
  }
}
