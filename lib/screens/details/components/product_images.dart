import 'package:flutter/material.dart';

import '../../../models/product.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final String product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.75,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              2,
              (index) => smallPreview(index),
            ),
          ],
        ),
      ],
    );
  }

  GestureDetector smallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Color(0xFF242d35),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: selectedImage == index
                  ? Color(0xFFFFBC2E)
                  : Colors.transparent),
        ),
        child: Image.asset(widget.product),
      ),
    );
  }
}
