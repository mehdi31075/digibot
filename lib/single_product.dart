class SingleProductResponse {
  int? status;
  Data? data;

  SingleProductResponse({this.status, this.data});

  SingleProductResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }
}

class Data {
  DetailedProduct? product;

  Data({this.product});

  Data.fromJson(Map<String, dynamic> json) {
    product =
        json['product'] != null ? new DetailedProduct.fromJson(json['product']) : null;
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
    hasTrueToSize = json['has_true_to_size'];
    questionsCount = json['questions_count'];
    commentsCount = json['comments_count'];
    digifyTouchpoint = json['digify_touchpoint'];
  }
}

class Url {
  String? uri;

  Url({this.uri});

  Url.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
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
}