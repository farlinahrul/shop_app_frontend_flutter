import 'package:flutter/material.dart';
import 'package:shop_app/theme/PaletteColor.dart';
import 'package:shop_app/theme/TypographyStyle.dart';
import 'package:shop_app/views/DashboardPage/Components/NewProductTile.dart';
import 'package:shop_app/views/DashboardPage/Components/PopularProductTile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> dataCategories = [
    'All Shoes',
    'Running',
    'Training',
    'Basketball',
    'Basketball',
    'Basketball',
  ];

  int currentIndexCategory = 0;

  List<Map<String, dynamic>> dataPopularProducts = [
    {'category': 'Hiking', 'name': 'COURT VISION 2.0', 'price': 58.7},
    {'category': 'Hiking', 'name': 'TERREX URBAN LOW', 'price': 143.98},
    {'category': 'Running', 'name': 'SL 20 SHOES', 'price': 123.82},
    {'category': 'Training', 'name': 'Adidas V1', 'price': 200.00},
  ];

  List<Map<String, dynamic>> dataNewProducts = [
    {'category': 'Football', 'name': 'Predator 20.3 Firm Ground', 'price': 68.47},
    {'category': 'Running', 'name': 'Ultra 4D 5 Shoes', 'price': 285.73},
    {'category': 'Basketball', 'name': 'SCourt Vision 2.0 Shoes', 'price': 57.15},
    {'category': 'Training', 'name': 'LEGO SPORT SHOES', 'price': 92.73},
  ];

  Widget header() {
    return Container(
      padding: EdgeInsets.all(30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Alex',
                  style: TypographyStyle.primaryTextStyle
                      .copyWith(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                Text(
                  '@alexkeinn',
                  style: TypographyStyle.subtitleTextStyle,
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/icon_profile.png',
            width: 54,
          )
        ],
      ),
    );
  }

  Widget topBarCategories() {
    return Container(
      width: double.maxFinite,
      height: 40,
      child: ListView.builder(
        // physics: BouncingScrollPhysics(),
        shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        itemCount: dataCategories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentIndexCategory = index;
              });
            },
            child: Container(
              // height: 20,
              margin: EdgeInsets.symmetric(horizontal: 14),
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: currentIndexCategory == index
                      ? PaletteColor.primaryColor
                      : Color(0x000000),
                  border: Border.all(color: PaletteColor.subtitleTextColor)),

              child: Center(
                child: Text(
                  dataCategories[index],
                  style: currentIndexCategory == index
                      ? TypographyStyle.primaryTextStyle
                          .copyWith(fontWeight: FontWeight.w500, fontSize: 13)
                      : TypographyStyle.subtitleTextStyle
                          .copyWith(fontWeight: FontWeight.w500, fontSize: 13),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget popularProducts() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Popular Products',
              style: TypographyStyle.primaryTextStyle
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 22),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 14),
            height: 278,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: dataPopularProducts.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return PopularProductTile(
                  urlImage: 'assets/shoe.png',
                  category: dataPopularProducts[index]['category'],
                  name: dataPopularProducts[index]['name'],
                  price: dataPopularProducts[index]['price'],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget newArrivals() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: Text(
              'New Arrivals',
              style: TypographyStyle.titleTextProductWhitetStyle
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 22,),
            ),
          ),
          Container(
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: dataNewProducts.length,
              itemBuilder: (context, index) {
                return NewProductTile(
                  urlImage: 'assets/shoe.png',
                  category: dataNewProducts[index]['category'],
                  name: dataNewProducts[index]['name'],
                  price: dataNewProducts[index]['price'],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        topBarCategories(),
        popularProducts(),
        newArrivals()
      ],
    );
  }
}
