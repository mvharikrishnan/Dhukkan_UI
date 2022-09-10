import 'package:custom_ui_design/widgets/catelogueProducts.dart';
import 'package:flutter/material.dart';

class CatelogueScreen extends StatelessWidget {
  const CatelogueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        appBar: AppBar(
          title: Text('Catelogue'),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              text: 'Products',
            ),
            Tab(
              text: 'Categories',
            )
          ]),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView(
            children: [
              const CatelogueProducts(
                ImageURL:
                    'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/t/s/tsmwhsh6508_1_4.jpg',
                Price: '699',
                ProductName: 'Explore|Men|Casual',
              ),
              CatelogueProducts(
                ImageURL:
                    'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-19-20-000576_1.jpg',
                Price: '789',
                ProductName: 'Women|Casual|Summer',
              ),
              CatelogueProducts(
                ImageURL:
                    'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-18-19-002268_1_1.jpg',
                Price: '699',
                ProductName: 'Unisex|Casual|Explore',
              ),
              CatelogueProducts(
                ImageURL:
                    'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-20-21-004963_1.jpg',
                Price: '499',
                ProductName: 'Men|T-Shirt|Casual',
              ),
               CatelogueProducts(
                ImageURL:
                    'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-19-20-000576_1.jpg',
                Price: '789',
                ProductName: 'Women|Casual|Summer',
              ),
              CatelogueProducts(
                ImageURL:
                    'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/t/s/tsmwhsh6508_1_4.jpg',
                Price: '699',
                ProductName: 'Explore|Men|Casual',
              ),
              CatelogueProducts(
                ImageURL:
                    'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-18-19-002268_1_1.jpg',
                Price: '699',
                ProductName: 'Unisex|Casual|Explore',
              ),
              CatelogueProducts(
                ImageURL:
                    'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-20-21-004963_1.jpg',
                Price: '499',
                ProductName: 'Men|T-Shirt|Casual',
              ),
               CatelogueProducts(
                ImageURL:
                    'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-19-20-000576_1.jpg',
                Price: '789',
                ProductName: 'Women|Casual|Summer',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
