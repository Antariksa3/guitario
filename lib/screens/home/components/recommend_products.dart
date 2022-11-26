import 'package:flutter/material.dart';

import '../../../models/product.dart';
import '../../details/details_screen.dart';
import 'product_card.dart';

class RecommendProducts extends StatelessWidget {
  const RecommendProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommended Product",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "See More",
                  style: TextStyle(color: Color(0xFFBBBBBB)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                recommendProducts.length,
                (index) => ProductCard(
                  product: recommendProducts[index],
                  press: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => DetailScreen(
                            id: recommendProducts[index].id,
                            product: recommendProducts[index],
                          )),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}
