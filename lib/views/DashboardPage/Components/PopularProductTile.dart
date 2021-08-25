import 'package:flutter/material.dart';
import 'package:shop_app/theme/PaletteColor.dart';
import 'package:shop_app/theme/TypographyStyle.dart';

class PopularProductTile extends StatelessWidget {
  final urlImage, category, name, price;
  const PopularProductTile({Key key, this.urlImage, this.category, this.name, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      width: 215,
      height: 278,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: PaletteColor.bgColor5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset(
            urlImage,
            height: 120,
            width: 215,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: TypographyStyle.subtitleTextStyle.copyWith(
                      fontWeight: FontWeight.w400, fontSize: 12),
                ),
                Text(
                  name,
                  style: TypographyStyle.titleTextProductStyle
                      .copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                Text(
                  '\$ $price',
                  style: TypographyStyle.priceTextStyle.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 14),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
