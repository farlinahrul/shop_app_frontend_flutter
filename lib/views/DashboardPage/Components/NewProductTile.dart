import 'package:flutter/material.dart';
import 'package:shop_app/theme/TypographyStyle.dart';

class NewProductTile extends StatelessWidget {
  final String urlImage, category, name;
  final double price;
  const NewProductTile({Key key, this.urlImage, this.category, this.name, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(urlImage),
                fit: BoxFit.cover
              ),
            ),
            // child: Image.asset(urlImage,fit: BoxFit.cover,),
          ),
          SizedBox(width: 12,),
          Expanded(
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
                  style: TypographyStyle.primaryTextStyle
                      .copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                Text(
                  '\$ $price',
                  style: TypographyStyle.priceTextStyle.copyWith(
                      fontWeight: FontWeight.w500, fontSize: 14),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
