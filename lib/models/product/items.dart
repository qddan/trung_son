import 'package:trung_son/models/product/mediaGalleryEntries.dart';

class Items {
  final int id;
  final String sku;
  final String name;
  final int attributeSetId;
  final int price;
  final int status;
  final int visibility;
  final String typeId;
  final String createdAt;
  final String updatedAt;
  final List<MediaGalleryEntries> mediaGalleryEntries;

  Items({
    this.id,
    this.sku,
    this.name,
    this.attributeSetId,
    this.price,
    this.status,
    this.visibility,
    this.typeId,
    this.createdAt,
    this.updatedAt,
    this.mediaGalleryEntries,
  });

  factory Items.fromJson(Map<String, dynamic> json) {
    final mediaGalleryEntriesJson = json['media_gallery_entries'] as List;
    List<MediaGalleryEntries> mediaGalleryEntries = mediaGalleryEntriesJson
        .map((i) => MediaGalleryEntries.fromJson(i))
        .toList();

    return Items(
      id: json['id'],
      sku: json['sku'],
      name: json['name'],
      attributeSetId: json['attribute_set_id'],
      price: json['price'],
      status: json['status'],
      visibility: json['visibility'],
      typeId: json['type_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      mediaGalleryEntries: mediaGalleryEntries,
    );
  }
}
