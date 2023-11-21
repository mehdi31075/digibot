class SingleProductResponse {
  int? status;
  Data? data;

  SingleProductResponse({this.status, this.data});

  SingleProductResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  DetailedProduct? product;

  Data({this.product});

  Data.fromJson(Map<String, dynamic> json) {
    product =
        json['product'] != null ? new DetailedProduct.fromJson(json['product']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.product != null) {
      data['product'] = this.product!.toJson();
    }
    return data;
  }
}

class DetailedProduct {
  int? id;
  String? titleFa;
  String? titleEn;
  Url? url;
  String? status;
  bool? hasQuickView;
  String? productType;
  Images? images;
  Rating? rating;
  bool? hasTrueToSize;
  int? questionsCount;
  int? commentsCount;
  String? digifyTouchpoint;

  DetailedProduct(
      {this.id,
      this.titleFa,
      this.titleEn,
      this.url,
      this.status,
      this.hasQuickView,
      this.productType,
      this.images,
      this.rating,
      this.hasTrueToSize,
      this.questionsCount,
      this.commentsCount,
      this.digifyTouchpoint,
      });

  DetailedProduct.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titleFa = json['title_fa'];
    titleEn = json['title_en'];
    url = json['url'] != null ? new Url.fromJson(json['url']) : null;
    status = json['status'];
    hasQuickView = json['has_quick_view'];
    productType = json['product_type'];
    images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
    rating =
        json['rating'] != null ? new Rating.fromJson(json['rating']) : null;
    hasTrueToSize = json['has_true_to_size'];
    questionsCount = json['questions_count'];
    commentsCount = json['comments_count'];
    digifyTouchpoint = json['digify_touchpoint'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title_fa'] = this.titleFa;
    data['title_en'] = this.titleEn;
    if (this.url != null) {
      data['url'] = this.url!.toJson();
    }
    data['status'] = this.status;
    data['has_quick_view'] = this.hasQuickView;
    data['product_type'] = this.productType;
    if (this.rating != null) {
      data['rating'] = this.rating!.toJson();
    }
    data['questions_count'] = this.questionsCount;
    data['comments_count'] = this.commentsCount;
    data['digify_touchpoint'] = this.digifyTouchpoint;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uri'] = this.uri;
    return data;
  }
}

class Images {
  Main? main;
  List<Main>? list;

  Images({this.main, this.list});

  Images.fromJson(Map<String, dynamic> json) {
    main = json['main'] != null ? new Main.fromJson(json['main']) : null;
    list = json['list'] != null
        ? (json['list'] as List).map((e) => Main.fromJson(e)).toList()
        : null;
  }
}

class Main {
  List<String>? url;
  List<String>? webpUrl;

  Main({this.url, this.webpUrl});

  Main.fromJson(Map<String, dynamic> json) {
    url = json['url'].cast<String>();
    webpUrl = json['webp_url'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['webp_url'] = this.webpUrl;
    return data;
  }
}

class Rating {
  int? rate;
  int? count;

  Rating({this.rate, this.count});

  Rating.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rate'] = this.rate;
    data['count'] = this.count;
    return data;
  }
}

class Colors {
  int? id;
  String? title;
  String? hexCode;

  Colors({this.id, this.title, this.hexCode});

  Colors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    hexCode = json['hex_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['hex_code'] = this.hexCode;
    return data;
  }
}

class Products {
  String? brand;
  String? category;
  int? metric6;
  int? dimension2;
  int? dimension6;
  String? dimension7;
  int? dimension9;
  int? dimension11;
  String? dimension20;
  String? itemCategory2;
  String? itemCategory3;
  String? itemCategory4;
  String? itemCategory5;
  String? name;
  int? id;
  int? price;
  int? metric8;
  String? dimension3;
  int? dimension10;
  int? dimension15;
  int? metric15;
  int? metric11;
  int? metric12;

  Products(
      {this.brand,
      this.category,
      this.metric6,
      this.dimension2,
      this.dimension6,
      this.dimension7,
      this.dimension9,
      this.dimension11,
      this.dimension20,
      this.itemCategory2,
      this.itemCategory3,
      this.itemCategory4,
      this.itemCategory5,
      this.name,
      this.id,
      this.price,
      this.metric8,
      this.dimension3,
      this.dimension10,
      this.dimension15,
      this.metric15,
      this.metric11,
      this.metric12});

  Products.fromJson(Map<String, dynamic> json) {
    brand = json['brand'];
    category = json['category'];
    metric6 = json['metric6'];
    dimension2 = json['dimension2'];
    dimension6 = json['dimension6'];
    dimension7 = json['dimension7'];
    dimension9 = json['dimension9'];
    dimension11 = json['dimension11'];
    dimension20 = json['dimension20'];
    itemCategory2 = json['item_category2'];
    itemCategory3 = json['item_category3'];
    itemCategory4 = json['item_category4'];
    itemCategory5 = json['item_category5'];
    name = json['name'];
    id = json['id'];
    price = json['price'];
    metric8 = json['metric8'];
    dimension3 = json['dimension3'];
    dimension10 = json['dimension10'];
    dimension15 = json['dimension15'];
    metric15 = json['metric15'];
    metric11 = json['metric11'];
    metric12 = json['metric12'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['brand'] = this.brand;
    data['category'] = this.category;
    data['metric6'] = this.metric6;
    data['dimension2'] = this.dimension2;
    data['dimension6'] = this.dimension6;
    data['dimension7'] = this.dimension7;
    data['dimension9'] = this.dimension9;
    data['dimension11'] = this.dimension11;
    data['dimension20'] = this.dimension20;
    data['item_category2'] = this.itemCategory2;
    data['item_category3'] = this.itemCategory3;
    data['item_category4'] = this.itemCategory4;
    data['item_category5'] = this.itemCategory5;
    data['name'] = this.name;
    data['id'] = this.id;
    data['price'] = this.price;
    data['metric8'] = this.metric8;
    data['dimension3'] = this.dimension3;
    data['dimension10'] = this.dimension10;
    data['dimension15'] = this.dimension15;
    data['metric15'] = this.metric15;
    data['metric11'] = this.metric11;
    data['metric12'] = this.metric12;
    return data;
  }
}
