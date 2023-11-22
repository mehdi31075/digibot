class ProductsListResponse {
  int? status;
  Data? data;

  ProductsListResponse({this.status, this.data});

  ProductsListResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Filters? filters;
  List<Product>? products;
  String? resultType;
  int? searchPhase;
  List<Null>? advertisement;

  Data(
      {this.filters,
      this.products,
      this.resultType,
      this.searchPhase,
      this.advertisement});

  Data.fromJson(Map<String, dynamic> json) {
    filters =
        json['filters'] != null ? Filters.fromJson(json['filters']) : null;
    if (json['products'] != null) {
      products = <Product>[];
      json['products'].forEach((v) {
        products!.add(Product.fromJson(v));
      });
    }
    resultType = json['result_type'];
    searchPhase = json['search_phase'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.filters != null) {
      data['filters'] = this.filters!.toJson();
    }
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    data['result_type'] = this.resultType;
    data['search_phase'] = this.searchPhase;
    return data;
  }
}

class Filters {
  Brands? brands;
  Brands? colorPalettes;
  Brands? hasSellingStock;
  Brands? hasReadyToShipment;
  Brands? sellerTypes;
  Brands? types;
  Brands? attributes;

  Filters(
      {this.brands,
      this.colorPalettes,
      this.hasSellingStock,
      this.hasReadyToShipment,
      this.sellerTypes,
      this.types,
      this.attributes});

  Filters.fromJson(Map<String, dynamic> json) {
    brands = json['brands'] != null ? Brands.fromJson(json['brands']) : null;
    colorPalettes = json['color_palettes'] != null
        ? Brands.fromJson(json['color_palettes'])
        : null;
    hasSellingStock = json['has_selling_stock'] != null
        ? Brands.fromJson(json['has_selling_stock'])
        : null;
    hasReadyToShipment = json['has_ready_to_shipment'] != null
        ? Brands.fromJson(json['has_ready_to_shipment'])
        : null;
    sellerTypes = json['seller_types'] != null
        ? Brands.fromJson(json['seller_types'])
        : null;
    types = json['types'] != null ? Brands.fromJson(json['types']) : null;
    attributes =
        json['attributes'] != null ? Brands.fromJson(json['attributes']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.brands != null) {
      data['brands'] = this.brands!.toJson();
    }
    if (this.colorPalettes != null) {
      data['color_palettes'] = this.colorPalettes!.toJson();
    }
    if (this.hasSellingStock != null) {
      data['has_selling_stock'] = this.hasSellingStock!.toJson();
    }
    if (this.hasReadyToShipment != null) {
      data['has_ready_to_shipment'] = this.hasReadyToShipment!.toJson();
    }
    if (this.sellerTypes != null) {
      data['seller_types'] = this.sellerTypes!.toJson();
    }
    if (this.types != null) {
      data['types'] = this.types!.toJson();
    }
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    return data;
  }
}

class Brands {
  String? type;
  String? title;

  Brands({this.type, this.title});

  Brands.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = this.type;
    data['title'] = this.title;
    return data;
  }
}

class Url {
  String? uri;

  Url({this.uri});

  Url.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uri'] = this.uri;
    return data;
  }
}

class Logo {
  List<String>? url;

  Logo({this.url});

  Logo.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = this.url;
    return data;
  }
}

class Product {
  int? id;
  String? titleFa;
  String? titleEn;
  Url? url;
  String? status;
  bool? hasQuickView;
  String? productType;
  Images? images;

  Product(
      {this.id,
      this.titleFa,
      this.titleEn,
      this.url,
      this.status,
      this.hasQuickView,
      this.productType,
      this.images});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titleFa = json['title_fa'];
    titleEn = json['title_en'];
    url = json['url'] != null ? Url.fromJson(json['url']) : null;
    status = json['status'];
    hasQuickView = json['has_quick_view'];
    productType = json['product_type'];
    images = json['images'] != null ? Images.fromJson(json['images']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['title_fa'] = this.titleFa;
    data['title_en'] = this.titleEn;
    if (this.url != null) {
      data['url'] = this.url!.toJson();
    }
    data['status'] = this.status;
    data['has_quick_view'] = this.hasQuickView;
    data['product_type'] = this.productType;
    if (this.images != null) {
      data['images'] = this.images!.toJson();
    }
    return data;
  }
}

class Images {
  Main? main;

  Images({this.main});

  Images.fromJson(Map<String, dynamic> json) {
    main = json['main'] != null ? Main.fromJson(json['main']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.main != null) {
      data['main'] = this.main!.toJson();
    }
    return data;
  }
}

class Main {
  List<dynamic>? url;
  List<dynamic>? webpUrl;

  Main({this.url, this.webpUrl});

  Main.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    webpUrl = json['webp_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = this.url;
    data['webp_url'] = this.webpUrl;
    return data;
  }
}