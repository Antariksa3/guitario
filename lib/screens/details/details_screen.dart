import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'components/body.dart';
import 'components/custom_appbar.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required id, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF191e25),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: CustomAppBar(rating: product.ratings),
        ),
        body: Body(
            product: product,
            id: product.id,
            images: product.images,
            title: product.title,
            price: product.price));
  }
}
