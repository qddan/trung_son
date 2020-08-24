import 'package:trung_son/models/product/items.dart';

class Product {
  final List<Items> items;
  final int totalCount;
  Product({this.items, this.totalCount});

  factory Product.fromJson(Map<String, dynamic> json) {
    final itemsFromJson = json['items'] as List;
    List<Items> items = itemsFromJson.map((i) => Items.fromJson(i)).toList();

    return Product(
      items: items,
      totalCount: json['total_count'],
    );
  }
}
