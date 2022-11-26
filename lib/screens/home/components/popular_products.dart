import 'package:flutter/material.dart';

import '../../../models/product.dart';
import '../../details/details_screen.dart';
import 'product_card.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
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
                "Popular Product",
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
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => DetailScreen(
                            id: demoProducts[index].id,
                            product: demoProducts[index],
                          )),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20)
            ],
          ),
        ),
      ],
    );
  }
}
