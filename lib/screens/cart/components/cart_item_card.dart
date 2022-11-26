import 'package:flutter/material.dart';

import '../../../models/cart.dart';

class CartItemCard extends StatefulWidget {
  final String image, title, price;
  const CartItemCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFF242d35),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(widget.image),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              maxLines: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Text.rich(
              TextSpan(
                text: "\$${widget.price}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: " x1",
                    style: TextStyle(color: Colors.white60),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
