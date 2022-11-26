import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_products.dart';
import 'recommend_products.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF191e25),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              HomeHeader(),
              SizedBox(height: 10),
              DiscountBanner(),
              SpecialOffers(),
              SizedBox(height: 30),
              PopularProducts(),
              SizedBox(height: 30),
              RecommendProducts(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
