class ProductRoot {
  List<Items> items;
  SearchCriteria searchCriteria;
  int totalCount;

  ProductRoot({this.items, this.searchCriteria, this.totalCount});

  ProductRoot.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = new List<Items>();
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
    searchCriteria = json['search_criteria'] != null
        ? new SearchCriteria.fromJson(json['search_criteria'])
        : null;
    totalCount = json['total_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    if (this.searchCriteria != null) {
      data['search_criteria'] = this.searchCriteria.toJson();
    }
    data['total_count'] = this.totalCount;
    return data;
  }
}

class Items {
  int id;
  String sku;
  String name;
  int attributeSetId;
  int price;
  int status;
  int visibility;
  String typeId;
  String createdAt;
  String updatedAt;
  ExtensionAttributes extensionAttributes;
  List<ProductLinks> productLinks;
  List<Null> options;
  List<MediaGalleryEntries> mediaGalleryEntries;
  List<Null> tierPrices;
  List<CustomAttributes> customAttributes;

  Items(
      {this.id,
      this.sku,
      this.name,
      this.attributeSetId,
      this.price,
      this.status,
      this.visibility,
      this.typeId,
      this.createdAt,
      this.updatedAt,
      this.extensionAttributes,
      this.productLinks,
      this.options,
      this.mediaGalleryEntries,
      this.tierPrices,
      this.customAttributes});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sku = json['sku'];
    name = json['name'];
    attributeSetId = json['attribute_set_id'];
    price = json['price'];
    status = json['status'];
    visibility = json['visibility'];
    typeId = json['type_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    extensionAttributes = json['extension_attributes'] != null
        ? new ExtensionAttributes.fromJson(json['extension_attributes'])
        : null;
    if (json['product_links'] != null) {
      productLinks = new List<ProductLinks>();
      json['product_links'].forEach((v) {
        productLinks.add(new ProductLinks.fromJson(v));
      });
    }
    if (json['options'] != null) {
      options = new List<Null>();
      json['options'].forEach((v) {
//        options.add(new Null.fromJson(v));
      });
    }
    if (json['media_gallery_entries'] != null) {
      mediaGalleryEntries = new List<MediaGalleryEntries>();
      json['media_gallery_entries'].forEach((v) {
        mediaGalleryEntries.add(new MediaGalleryEntries.fromJson(v));
      });
    }
    if (json['tier_prices'] != null) {
      tierPrices = new List<Null>();
      json['tier_prices'].forEach((v) {
//        tierPrices.add(new Null.fromJson(v));
      });
    }
    if (json['custom_attributes'] != null) {
      customAttributes = new List<CustomAttributes>();
      json['custom_attributes'].forEach((v) {
        customAttributes.add(new CustomAttributes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sku'] = this.sku;
    data['name'] = this.name;
    data['attribute_set_id'] = this.attributeSetId;
    data['price'] = this.price;
    data['status'] = this.status;
    data['visibility'] = this.visibility;
    data['type_id'] = this.typeId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.extensionAttributes != null) {
      data['extension_attributes'] = this.extensionAttributes.toJson();
    }
    if (this.productLinks != null) {
      data['product_links'] = this.productLinks.map((v) => v.toJson()).toList();
    }
    if (this.options != null) {
//      data['options'] = this.options.map((v) => v.toJson()).toList();
    }
    if (this.mediaGalleryEntries != null) {
      data['media_gallery_entries'] =
          this.mediaGalleryEntries.map((v) => v.toJson()).toList();
    }
    if (this.tierPrices != null) {
//      data['tier_prices'] = this.tierPrices.map((v) => v.toJson()).toList();
    }
    if (this.customAttributes != null) {
      data['custom_attributes'] =
          this.customAttributes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ExtensionAttributes {
  List<int> websiteIds;
  List<CategoryLinks> categoryLinks;

  ExtensionAttributes({this.websiteIds, this.categoryLinks});

  ExtensionAttributes.fromJson(Map<String, dynamic> json) {
    websiteIds = json['website_ids'].cast<int>();
    if (json['category_links'] != null) {
      categoryLinks = new List<CategoryLinks>();
      json['category_links'].forEach((v) {
        categoryLinks.add(new CategoryLinks.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['website_ids'] = this.websiteIds;
    if (this.categoryLinks != null) {
      data['category_links'] =
          this.categoryLinks.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryLinks {
  int position;
  String categoryId;

  CategoryLinks({this.position, this.categoryId});

  CategoryLinks.fromJson(Map<String, dynamic> json) {
    position = json['position'];
    categoryId = json['category_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['position'] = this.position;
    data['category_id'] = this.categoryId;
    return data;
  }
}

class ProductLinks {
  String sku;
  String linkType;
  String linkedProductSku;
  String linkedProductType;
  int position;

  ProductLinks(
      {this.sku,
      this.linkType,
      this.linkedProductSku,
      this.linkedProductType,
      this.position});

  ProductLinks.fromJson(Map<String, dynamic> json) {
    sku = json['sku'];
    linkType = json['link_type'];
    linkedProductSku = json['linked_product_sku'];
    linkedProductType = json['linked_product_type'];
    position = json['position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sku'] = this.sku;
    data['link_type'] = this.linkType;
    data['linked_product_sku'] = this.linkedProductSku;
    data['linked_product_type'] = this.linkedProductType;
    data['position'] = this.position;
    return data;
  }
}

class MediaGalleryEntries {
  int id;
  String mediaType;
  String label;
  int position;
  bool disabled;
  List<String> types;
  String file;

  MediaGalleryEntries(
      {this.id,
      this.mediaType,
      this.label,
      this.position,
      this.disabled,
      this.types,
      this.file});

  MediaGalleryEntries.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mediaType = json['media_type'];
    label = json['label'];
    position = json['position'];
    disabled = json['disabled'];
    types = json['types'].cast<String>();
    file = json['file'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['media_type'] = this.mediaType;
    data['label'] = this.label;
    data['position'] = this.position;
    data['disabled'] = this.disabled;
    data['types'] = this.types;
    data['file'] = this.file;
    return data;
  }
}

class CustomAttributes {
  String attributeCode;
  String value;

  CustomAttributes({this.attributeCode, this.value});

  CustomAttributes.fromJson(Map<String, dynamic> json) {
    attributeCode = json['attribute_code'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['attribute_code'] = this.attributeCode;
    data['value'] = this.value;
    return data;
  }
}

class SearchCriteria {
  List<Null> filterGroups;
  int pageSize;
  int currentPage;

  SearchCriteria({this.filterGroups, this.pageSize, this.currentPage});

  SearchCriteria.fromJson(Map<String, dynamic> json) {
    if (json['filter_groups'] != null) {
      filterGroups = new List<Null>();
      json['filter_groups'].forEach((v) {
//        filterGroups.add(new Null.fromJson(v));
      });
    }
    pageSize = json['page_size'];
    currentPage = json['current_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.filterGroups != null) {
//      data['filter_groups'] = this.filterGroups.map((v) => v.toJson()).toList();
    }
    data['page_size'] = this.pageSize;
    data['current_page'] = this.currentPage;
    return data;
  }
}
