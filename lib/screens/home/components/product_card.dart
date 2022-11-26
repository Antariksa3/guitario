import 'package:flutter/material.dart';

import '../../../models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    required this.product,
    required this.press,
  }) : super(key: key);

  final double width;
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFF242d35),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.images),
                ),
              ),
              SizedBox(height: 10),
              Text(
                product.title,
                style: TextStyle(color: Colors.white),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8),
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        color: product.isFavourite
                            ? Colors.grey.withOpacity(0.15)
                            : Colors.grey.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: product.isFavourite
                            ? Color(0xFFFF4848)
                            : Color(0xFFDBDEE4),
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
