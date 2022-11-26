import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../db_services/db_item.dart';
import '../../../models/cart_model.dart';
import '../../../models/product.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';

class Body extends StatefulWidget {
  final int id;
  final String images, title, price;
  final Product product;

  const Body(
      {super.key,
      required this.product,
      required this.id,
      required this.images,
      required this.title,
      required this.price});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future addData() async {
    var guitar;
    guitar = CartModel(
        id: widget.id,
        title: widget.title,
        price: widget.price,
        images: widget.images);
    await GuitarDatabase.instance.create(guitar);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ProductImages(product: widget.images),
        Image.asset(widget.images),
        SizedBox(height: 130),
        TopRoundedContainer(
          color: Color(0xFF242d35),
          child: Column(
            children: [
              ProductDescription(product: widget.product),
              TopRoundedContainer(
                color: Color(0xFF191e25),
                child: Column(
                  children: [
                    ColorDots(product: widget.product),
                    TopRoundedContainer(
                      color: Color(0xFF242d35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left:
                                    MediaQuery.of(context).size.width * 0.075),
                            child: Text(
                              "\$${widget.product.price}",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              // left: MediaQuery.of(context).size.width * 0.075,
                              right: 20,
                              top: 15,
                              bottom: 20,
                            ),
                            child: DefaultButton(
                              text: "Add to Cart",
                              press: () {
                                addData();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
