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
  List<SortOptions>? sortOptions;
  String? resultType;
  Pager? pager;
  int? searchPhase;
  Intrack? intrack;
  Seo? seo;
  List<Null>? advertisement;
  Category? category;
  List<Breadcrumb>? breadcrumb;
  BigdataTrackerData? bigdataTrackerData;

  Data(
      {this.filters,
      this.products,
      this.sortOptions,
      this.resultType,
      this.pager,
      this.searchPhase,
      this.intrack,
      this.seo,
      this.advertisement,
      this.category,
      this.breadcrumb,
      this.bigdataTrackerData});

  Data.fromJson(Map<String, dynamic> json) {
    filters =
        json['filters'] != null ? Filters.fromJson(json['filters']) : null;
    if (json['products'] != null) {
      products = <Product>[];
      json['products'].forEach((v) {
        products!.add(Product.fromJson(v));
      });
    }
    if (json['sort_options'] != null) {
      sortOptions = <SortOptions>[];
      json['sort_options'].forEach((v) {
        sortOptions!.add(SortOptions.fromJson(v));
      });
    }
    resultType = json['result_type'];
    pager = json['pager'] != null ? Pager.fromJson(json['pager']) : null;
    searchPhase = json['search_phase'];
    intrack =
        json['intrack'] != null ? Intrack.fromJson(json['intrack']) : null;
    seo = json['seo'] != null ? Seo.fromJson(json['seo']) : null;
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    if (json['breadcrumb'] != null) {
      breadcrumb = <Breadcrumb>[];
      json['breadcrumb'].forEach((v) {
        breadcrumb!.add(Breadcrumb.fromJson(v));
      });
    }
    bigdataTrackerData = json['bigdata_tracker_data'] != null
        ? BigdataTrackerData.fromJson(json['bigdata_tracker_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.filters != null) {
      data['filters'] = this.filters!.toJson();
    }
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    if (this.sortOptions != null) {
      data['sort_options'] = this.sortOptions!.map((v) => v.toJson()).toList();
    }
    data['result_type'] = this.resultType;
    if (this.pager != null) {
      data['pager'] = this.pager!.toJson();
    }
    data['search_phase'] = this.searchPhase;
    if (this.intrack != null) {
      data['intrack'] = this.intrack!.toJson();
    }
    if (this.seo != null) {
      data['seo'] = this.seo!.toJson();
    }
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    if (this.breadcrumb != null) {
      data['breadcrumb'] = this.breadcrumb!.map((v) => v.toJson()).toList();
    }
    if (this.bigdataTrackerData != null) {
      data['bigdata_tracker_data'] = this.bigdataTrackerData!.toJson();
    }
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
  Properties? properties;

  Product(
      {this.id,
      this.titleFa,
      this.titleEn,
      this.url,
      this.status,
      this.hasQuickView,
      this.productType,
      this.images,
      this.properties});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titleFa = json['title_fa'];
    titleEn = json['title_en'];
    url = json['url'] != null ? Url.fromJson(json['url']) : null;
    status = json['status'];
    hasQuickView = json['has_quick_view'];
    productType = json['product_type'];
    images = json['images'] != null ? Images.fromJson(json['images']) : null;
    properties = json['properties'] != null
        ? Properties.fromJson(json['properties'])
        : null;
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
    if (this.properties != null) {
      data['properties'] = this.properties!.toJson();
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

class Color {
  int? id;
  String? title;
  String? hexCode;

  Color({this.id, this.title, this.hexCode});

  Color.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    hexCode = json['hex_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['title'] = this.title;
    data['hex_code'] = this.hexCode;
    return data;
  }
}

class Providers {
  String? title;
  String? description;
  bool? hasLeadTime;
  String? type;

  Providers({this.title, this.description, this.hasLeadTime, this.type});

  Providers.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    hasLeadTime = json['has_lead_time'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = this.title;
    data['description'] = this.description;
    data['has_lead_time'] = this.hasLeadTime;
    data['type'] = this.type;
    return data;
  }
}

class Properties {
  bool? isFastShipping;
  bool? isShipBySeller;
  bool? freeShippingBadge;
  bool? isMultiWarehouse;
  bool? isFake;
  bool? hasGift;
  int? minPriceInLastMonth;
  bool? isNonInventory;
  bool? isAd;
  bool? isJetEligible;
  bool? isMedicalSupplement;

  Properties(
      {this.isFastShipping,
      this.isShipBySeller,
      this.freeShippingBadge,
      this.isMultiWarehouse,
      this.isFake,
      this.hasGift,
      this.minPriceInLastMonth,
      this.isNonInventory,
      this.isAd,
      this.isJetEligible,
      this.isMedicalSupplement});

  Properties.fromJson(Map<String, dynamic> json) {
    isFastShipping = json['is_fast_shipping'];
    isShipBySeller = json['is_ship_by_seller'];
    freeShippingBadge = json['free_shipping_badge'];
    isMultiWarehouse = json['is_multi_warehouse'];
    isFake = json['is_fake'];
    hasGift = json['has_gift'];
    minPriceInLastMonth = json['min_price_in_last_month'];
    isNonInventory = json['is_non_inventory'];
    isAd = json['is_ad'];
    isJetEligible = json['is_jet_eligible'];
    isMedicalSupplement = json['is_medical_supplement'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['is_fast_shipping'] = this.isFastShipping;
    data['is_ship_by_seller'] = this.isShipBySeller;
    data['free_shipping_badge'] = this.freeShippingBadge;
    data['is_multi_warehouse'] = this.isMultiWarehouse;
    data['is_fake'] = this.isFake;
    data['has_gift'] = this.hasGift;
    data['min_price_in_last_month'] = this.minPriceInLastMonth;
    data['is_non_inventory'] = this.isNonInventory;
    data['is_ad'] = this.isAd;
    data['is_jet_eligible'] = this.isJetEligible;
    data['is_medical_supplement'] = this.isMedicalSupplement;
    return data;
  }
}

class SortOptions {
  int? id;
  String? titleFa;

  SortOptions({this.id, this.titleFa});

  SortOptions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titleFa = json['title_fa'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['title_fa'] = this.titleFa;
    return data;
  }
}

class Pager {
  int? currentPage;
  int? totalPages;
  int? totalItems;

  Pager({this.currentPage, this.totalPages, this.totalItems});

  Pager.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    totalPages = json['total_pages'];
    totalItems = json['total_items'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['current_page'] = this.currentPage;
    data['total_pages'] = this.totalPages;
    data['total_items'] = this.totalItems;
    return data;
  }
}

class Intrack {
  String? eventName;
  EventData? eventData;
  int? userId;

  Intrack({this.eventName, this.eventData, this.userId});

  Intrack.fromJson(Map<String, dynamic> json) {
    eventName = json['eventName'];
    eventData = json['eventData'] != null
        ? EventData.fromJson(json['eventData'])
        : null;
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['eventName'] = this.eventName;
    if (this.eventData != null) {
      data['eventData'] = this.eventData!.toJson();
    }
    data['userId'] = this.userId;
    return data;
  }
}

class EventData {
  String? name;
  int? level;
  String? url;
  String? categoryLevel1;
  String? categoryLevel2;
  String? categoryLevel3;
  String? categoryLevel4;
  String? categoryLevel5;

  EventData(
      {this.name,
      this.level,
      this.url,
      this.categoryLevel1,
      this.categoryLevel2,
      this.categoryLevel3,
      this.categoryLevel4,
      this.categoryLevel5});

  EventData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    level = json['level'];
    url = json['url'];
    categoryLevel1 = json['categoryLevel1'];
    categoryLevel2 = json['categoryLevel2'];
    categoryLevel3 = json['categoryLevel3'];
    categoryLevel4 = json['categoryLevel4'];
    categoryLevel5 = json['categoryLevel5'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = this.name;
    data['level'] = this.level;
    data['url'] = this.url;
    data['categoryLevel1'] = this.categoryLevel1;
    data['categoryLevel2'] = this.categoryLevel2;
    data['categoryLevel3'] = this.categoryLevel3;
    data['categoryLevel4'] = this.categoryLevel4;
    data['categoryLevel5'] = this.categoryLevel5;
    return data;
  }
}

class Seo {
  String? title;
  String? description;
  String? content;
  TwitterCard? twitterCard;
  TwitterCard? openGraph;
  Header? header;

  Seo({
    this.title,
    this.description,
    this.content,
    this.twitterCard,
    this.openGraph,
    this.header,
  });

  Seo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    content = json['content'];
    twitterCard = json['twitter_card'] != null
        ? TwitterCard.fromJson(json['twitter_card'])
        : null;
    openGraph = json['open_graph'] != null
        ? TwitterCard.fromJson(json['open_graph'])
        : null;
    header = json['header'] != null ? Header.fromJson(json['header']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = this.title;
    data['description'] = this.description;
    data['content'] = this.content;
    if (this.twitterCard != null) {
      data['twitter_card'] = this.twitterCard!.toJson();
    }
    if (this.openGraph != null) {
      data['open_graph'] = this.openGraph!.toJson();
    }
    if (this.header != null) {
      data['header'] = this.header!.toJson();
    }
    return data;
  }
}

class TwitterCard {
  String? title;
  String? description;
  String? image;

  TwitterCard({this.title, this.description, this.image});

  TwitterCard.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = this.title;
    data['description'] = this.description;
    data['image'] = this.image;
    return data;
  }
}

class Header {
  String? title;
  String? description;
  String? robotsMeta;

  Header({this.title, this.description, this.robotsMeta});

  Header.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    robotsMeta = json['robots_meta'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = this.title;
    data['description'] = this.description;
    data['robots_meta'] = this.robotsMeta;
    return data;
  }
}

class Item {
  String? type;
  String? id;
  String? name;
  String? url;
  Review? review;
  AggregateRating? aggregateRating;
  String? image;

  Item(
      {this.type,
      this.id,
      this.name,
      this.url,
      this.review,
      this.aggregateRating,
      this.image});

  Item.fromJson(Map<String, dynamic> json) {
    type = json['@type'];
    id = json['@id'];
    name = json['name'];
    url = json['url'];
    review = json['review'] != null ? Review.fromJson(json['review']) : null;
    aggregateRating = json['aggregateRating'] != null
        ? AggregateRating.fromJson(json['aggregateRating'])
        : null;
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['@type'] = this.type;
    data['@id'] = this.id;
    data['name'] = this.name;
    data['url'] = this.url;
    if (this.review != null) {
      data['review'] = this.review!.toJson();
    }
    if (this.aggregateRating != null) {
      data['aggregateRating'] = this.aggregateRating!.toJson();
    }
    data['image'] = this.image;
    return data;
  }
}

class Review {
  String? type;
  ReviewRating? reviewRating;
  Author? author;
  String? datePublished;
  String? reviewBody;
  String? name;

  Review(
      {this.type,
      this.reviewRating,
      this.author,
      this.datePublished,
      this.reviewBody,
      this.name});

  Review.fromJson(Map<String, dynamic> json) {
    type = json['@type'];
    reviewRating = json['reviewRating'] != null
        ? ReviewRating.fromJson(json['reviewRating'])
        : null;
    author = json['author'] != null ? Author.fromJson(json['author']) : null;
    datePublished = json['datePublished'];
    reviewBody = json['reviewBody'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['@type'] = this.type;
    if (this.reviewRating != null) {
      data['reviewRating'] = this.reviewRating!.toJson();
    }
    if (this.author != null) {
      data['author'] = this.author!.toJson();
    }
    data['datePublished'] = this.datePublished;
    data['reviewBody'] = this.reviewBody;
    data['name'] = this.name;
    return data;
  }
}

class ReviewRating {
  String? type;
  int? bestRating;
  int? ratingValue;

  ReviewRating({this.type, this.bestRating, this.ratingValue});

  ReviewRating.fromJson(Map<String, dynamic> json) {
    type = json['@type'];
    bestRating = json['bestRating'];
    ratingValue = json['ratingValue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['@type'] = this.type;
    data['bestRating'] = this.bestRating;
    data['ratingValue'] = this.ratingValue;
    return data;
  }
}

class Author {
  String? type;
  String? name;

  Author({this.type, this.name});

  Author.fromJson(Map<String, dynamic> json) {
    type = json['@type'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['@type'] = this.type;
    data['name'] = this.name;
    return data;
  }
}

class AggregateRating {
  String? type;
  double? ratingValue;
  int? reviewCount;

  AggregateRating({this.type, this.ratingValue, this.reviewCount});

  AggregateRating.fromJson(Map<String, dynamic> json) {
    type = json['@type'];
    ratingValue = json['ratingValue'];
    reviewCount = json['reviewCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['@type'] = this.type;
    data['ratingValue'] = this.ratingValue;
    data['reviewCount'] = this.reviewCount;
    return data;
  }
}

class Category {
  int? id;
  String? titleFa;
  String? titleEn;
  String? code;

  Category({this.id, this.titleFa, this.titleEn, this.code});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titleFa = json['title_fa'];
    titleEn = json['title_en'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['title_fa'] = this.titleFa;
    data['title_en'] = this.titleEn;
    data['code'] = this.code;
    return data;
  }
}

class Breadcrumb {
  String? title;
  Url? url;

  Breadcrumb({this.title, this.url});

  Breadcrumb.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'] != null ? Url.fromJson(json['url']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = this.title;
    if (this.url != null) {
      data['url'] = this.url!.toJson();
    }
    return data;
  }
}

class BigdataTrackerData {
  String? pageName;
  PageInfo? pageInfo;

  BigdataTrackerData({this.pageName, this.pageInfo});

  BigdataTrackerData.fromJson(Map<String, dynamic> json) {
    pageName = json['page_name'];
    pageInfo =
        json['page_info'] != null ? PageInfo.fromJson(json['page_info']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['page_name'] = this.pageName;
    if (this.pageInfo != null) {
      data['page_info'] = this.pageInfo!.toJson();
    }
    return data;
  }
}

class PageInfo {
  int? categoryId;

  PageInfo({this.categoryId});

  PageInfo.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['category_id'] = this.categoryId;
    return data;
  }
}
