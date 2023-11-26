//import 'package:chaleno/chaleno.dart';
import 'dart:convert';

import 'package:digi/products_list_response.dart';
import 'package:digi/single_product.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

enum SortTypes {
  jadid(1, 'جدید ترین'),
  porBazdid(4, 'پر بازدید ترین'),
  porForoush(7, 'پر فروش ترین'),
  arzan(20, 'ارزان ترین'),
  geran(21, 'گران ترین'),
  mortabet(22, 'مرتبط ترین'),
  sari(25, 'سریعترین ارسال'),
  pishnahad(27, 'پیشنهاد خریداران'),
  montakhab(29, 'منتخب');

  final int id;
  final String title;
  const SortTypes(this.id, this.title);
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String htmlContent = '';
  bool isLoading = false;
  final TextEditingController pageController = TextEditingController(text: '1');
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController queriesController = TextEditingController();
  final ScrollController scrollController = ScrollController();
  SortTypes selectedSortType = SortTypes.porForoush;

  List<Product> products = [];
  Map<String, DetailedProduct?> singleProducts = {};
  @override
  void initState() {
    super.initState();
  }

  Future<void> getProduct(String productId) async {
    var headers = {
      'authority': 'api.digikala.com',
      'accept': 'application/json, text/plain, /',
      'accept-language': 'en-US,en;q=0.9,fa;q=0.8',
      'cookie':
          '_ym_uid=1700397895471273994; _ym_d=1700397895; _ga=GA1.1.940205157.1700483816; Digikala:User:Token:new=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0Mjc4Mzc2LCJleHBpcmVfdGltZSI6MTcwMzA3NTkyMCwicGF5bG9hZCI6W10sInBhc3N3b3JkX3ZlcnNpb24iOjEsInR5cGUiOiJ0b2tlbiJ9.eMJ4i0p6mcuPO8SgXry8Y-5OCcAxb1l_PCdmVyeLUEM; TS01b6ea4d=01023105919f30fb8a89b4210a0a7755983319598d527c2bf17d27f7b10703a18649d21a827ed4ebb37f618d1638cb4e5d8b10db326278d6072c7f8a4d3c06f57bb281272e7081e3cb687879beb12c21fa86fe92f0fcaa186e81b5e0a8a2564d03e6be7394; _sp_ses.13cb=*; _hp2_ses_props.1726062826=%7B%22ts%22%3A1700569787302%2C%22d%22%3A%22www.digikala.com%22%2C%22h%22%3A%22%2F%22%7D; tracker_glob_new=bCSy6vw; tracker_session=cWTFxWA; TS01c77ebf=010231059150d422d7b9938c09922fd9f0956565654eb2bc99056a84cb99d8d7e0cae1fed17104b8b151c68ed964a8efc3496b211c1dfb3e9dd62e34e9890c009313e477fae9f9cd3776c37f6f79e49b8d2f4095ca; _sp_id.13cb=79e3ab0b-0849-475d-aa71-6d890bea105e.1700397908.6.1700572808.1700558093.b0dc88ae-cf21-4c74-8fe6-fcedc09f839e.ef5b54ba-0682-4201-ac5e-30f4cc2afd30.c0413848-5002-4d8c-b23c-1f45a1005d17.1700569785782.282; _ga_QQKVTD5TG8=GS1.1.1700569786.4.1.1700572820.0.0.0; _hp2_id.1726062826=%7B%22userId%22%3A%228052683938550187%22%2C%22pageviewId%22%3A%226472454472437489%22%2C%22sessionId%22%3A%225728745691707611%22%2C%22identity%22%3Anull%2C%22trackerVersion%22%3A%224.0%22%7D; TS01c77ebf=0102310591e01b456cd97d545309033b56e6b42b5b22bf58f07ae7cc10f95b445fe1c13c71bd571aeea81a9f1b96b30991deab09a998fa06967e8782405a424c5e21a5e00377f0bbfe4e0222c1ae4ee4aa46a12772; tracker_glob_new=bCSy6vw; tracker_session=cWTFxWA',
      'origin': 'https://www.digikala.com',
      'referer': 'https://www.digikala.com/',
      'sec-ch-ua':
          '"Google Chrome";v="119", "Chromium";v="119", "Not?A_Brand";v="24"',
      'sec-ch-ua-mobile': '?0',
      'sec-ch-ua-platform': '"Linux"',
      'sec-fetch-dest': 'empty',
      'sec-fetch-mode': 'cors',
      'sec-fetch-site': 'same-site',
      'user-agent':
          'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',
      'x-web-client': 'desktop',
      'x-web-optimize-response': '1'
    };
    var dio = Dio();
    var response = await dio.request(
      'https://api.digikala.com/v2/product/$productId/',
      options: Options(
        method: 'GET',
        headers: headers,
      ),
    );

    if (response.statusCode == 200) {
      setState(() {
        singleProducts.addAll({
          productId:
              SingleProductResponse.fromJson(response.data).data?.product,
        });
      });
    } else {
      print(response.statusMessage);
    }
  }

  Future<void> fetchData({
    required String page,
  }) async {
    var headers = {
      'authority': 'api.digikala.com',
      'accept': 'application/json, text/plain, /',
      'accept-language': 'en-US,en;q=0.9,fa;q=0.8',
      'cookie':
          '_ym_uid=1700397895471273994; _ym_d=1700397895; _ga=GA1.1.940205157.1700483816; Digikala:User:Token:new=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0Mjc4Mzc2LCJleHBpcmVfdGltZSI6MTcwMzA3NTkyMCwicGF5bG9hZCI6W10sInBhc3N3b3JkX3ZlcnNpb24iOjEsInR5cGUiOiJ0b2tlbiJ9.eMJ4i0p6mcuPO8SgXry8Y-5OCcAxb1l_PCdmVyeLUEM; TS01b6ea4d=01023105919f30fb8a89b4210a0a7755983319598d527c2bf17d27f7b10703a18649d21a827ed4ebb37f618d1638cb4e5d8b10db326278d6072c7f8a4d3c06f57bb281272e7081e3cb687879beb12c21fa86fe92f0fcaa186e81b5e0a8a2564d03e6be7394; _sp_ses.13cb=*; _hp2_ses_props.1726062826=%7B%22ts%22%3A1700569787302%2C%22d%22%3A%22www.digikala.com%22%2C%22h%22%3A%22%2F%22%7D; tracker_glob_new=bCSy6vw; tracker_session=cWTFxWA; _hp2_id.1726062826=%7B%22userId%22%3A%228052683938550187%22%2C%22pageviewId%22%3A%227089221157428420%22%2C%22sessionId%22%3A%225728745691707611%22%2C%22identity%22%3Anull%2C%22trackerVersion%22%3A%224.0%22%7D; _sp_id.13cb=79e3ab0b-0849-475d-aa71-6d890bea105e.1700397908.6.1700572606.1700558093.b0dc88ae-cf21-4c74-8fe6-fcedc09f839e.ef5b54ba-0682-4201-ac5e-30f4cc2afd30.c0413848-5002-4d8c-b23c-1f45a1005d17.1700569785782.278; _ga_QQKVTD5TG8=GS1.1.1700569786.4.1.1700572605.0.0.0; TS01c77ebf=010231059150d422d7b9938c09922fd9f0956565654eb2bc99056a84cb99d8d7e0cae1fed17104b8b151c68ed964a8efc3496b211c1dfb3e9dd62e34e9890c009313e477fae9f9cd3776c37f6f79e49b8d2f4095ca; TS01c77ebf=010231059157d20f3dfff808d16d1f0c8d10ad0fcd28b87a25a9fed5973ee389a3cb5d9aeb035a3983a01d5163b2b41d32942318da1bc00a26ec2cc594d99381ec055e0c39d4f4805abcb8cb9812f75825aecd82b3; tracker_glob_new=bCSy6vw; tracker_session=cWTFxWA',
      'origin': 'https://www.digikala.com',
      'referer': 'https://www.digikala.com/',
      'sec-ch-ua':
          '"Google Chrome";v="119", "Chromium";v="119", "Not?A_Brand";v="24"',
      'sec-ch-ua-mobile': '?0',
      'sec-ch-ua-platform': '"Linux"',
      'sec-fetch-dest': 'empty',
      'sec-fetch-mode': 'cors',
      'sec-fetch-site': 'same-site',
      'user-agent':
          'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',
      'x-web-client': 'desktop',
      'x-web-optimize-response': '1'
    };
    var dio = Dio();
    setState(() {
      isLoading = true;
    });
    final url =
        'https://api.digikala.com/v1${(categoryController.text).isNotEmpty ? '/categories/${categoryController.text}' : ''}/search/?sort=${selectedSortType.id}&page=$page&${queriesController.text}';
    print(url);
    var response = await dio.request(
      url,
      options: Options(
        method: 'GET',
        headers: headers,
      ),
    );
    setState(() {
      isLoading = false;
    });
    if (response.statusCode == 200) {
      setState(() {
        products =
            ProductsListResponse.fromJson(response.data).data?.products ?? [];
      });
      for (var element in products) {
        if (element.id != null) {
          getProduct(element.id.toString());
        }
      }
    } else {
      print(response.statusMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Digi'),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: categoryController,
                      decoration: InputDecoration(hintText: 'Category'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32),
                  ),
                  Expanded(
                    child: TextField(
                      controller: queriesController,
                      decoration: InputDecoration(hintText: 'Queries'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32),
                  ),
                  DropdownButton<SortTypes>(
                    items: SortTypes.values.map((SortTypes value) {
                      return DropdownMenuItem<SortTypes>(
                        value: value,
                        child: Text(value.title),
                      );
                    }).toList(),
                    value: selectedSortType,
                    onChanged: (value) {
                      setState(() {
                        if (value != null) selectedSortType = value;
                      });
                      fetchData(
                        page: pageController.text,
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32),
                  ),
                  Expanded(
                    child: TextField(
                      controller: pageController,
                      decoration: InputDecoration(hintText: 'Page'),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () => fetchData(
                  page: pageController.text,
                ),
                child: Text('Scrap'),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    ...products
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(32),
                            child: Column(
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Clipboard.setData(ClipboardData(
                                          text:
                                              'digikala.com${e.url?.uri ?? ''}'));
                                    },
                                    child: Text(e.url?.uri ?? '')),
                                const Padding(padding: EdgeInsets.all(32)),
                                if (singleProducts.keys
                                    .contains(e.id.toString()))
                                  Wrap(
                                    children: (singleProducts.entries
                                                .where((element) =>
                                                    element.key ==
                                                    e.id.toString())
                                                .first
                                                .value
                                                ?.images
                                                ?.list ??
                                            [])
                                        .map((e) => (e.url ?? []).isNotEmpty
                                            ? Image.network(
                                                e.webpUrl!.first
                                                    .replaceAll('quality,q_90',
                                                        'quality,q_10')
                                                    .replaceAll('h_800,w_800',
                                                        'h_600,w_600'),
                                                height: 200,
                                              )
                                            : Container())
                                        .toList(),
                                  ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                    if (int.tryParse(pageController.text) != null &&
                        products.isNotEmpty)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              scrollController
                                  .animateTo(0,
                                      duration:
                                          const Duration(milliseconds: 1000),
                                      curve: Curves.bounceIn)
                                  .then(
                                (value) {
                                  pageController.text =
                                      (int.parse(pageController.text) + 1)
                                          .toString();
                                  return fetchData(
                                    page: (int.parse(pageController.text) + 1)
                                        .toString(),
                                  );
                                },
                              );
                            },
                            child: Text('بعدی'),
                          ),
                          if (pageController.text != '1')
                            TextButton(
                              onPressed: () {
                                fetchData(
                                  page: (int.parse(pageController.text) - 1)
                                      .toString(),
                                );
                                pageController.text =
                                    (int.parse(pageController.text) - 1)
                                        .toString();
                                scrollController.animateTo(0,
                                    duration: Duration.zero,
                                    curve: Curves.bounceIn);
                              },
                              child: Text('قبلی'),
                            ),
                        ],
                      )
                  ],
                ),
              ),
              if (isLoading == true) const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
