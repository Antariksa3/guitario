import 'package:flutter/material.dart';

import '../../../models/product.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            product.title,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(15),
            width: 64,
            decoration: BoxDecoration(
              color:
                  product.isFavourite ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Icon(
              Icons.favorite,
              color:
                  product.isFavourite ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 40),
          child: Text(
            product.description,
            maxLines: 3,
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  "See More Detail",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white54,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.white54,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
