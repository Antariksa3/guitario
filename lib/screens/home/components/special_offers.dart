import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
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
                "Special for you",
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
              Card(
                image: 'assets/images/sales/1.png',
                name: '1957 Les Paul Custom',
                press: () {},
                price: '6,699',
                ratings: 4,
                rating: '4.1',
              ),
              Card(
                image: 'assets/images/sales/2.png',
                name: 'ES-335 Dot',
                press: () {},
                price: '2,999',
                ratings: 5,
                rating: '4.8',
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key? key,
    required this.name,
    required this.image,
    required this.price,
    required this.press,
    required this.ratings,
    required this.rating,
  }) : super(key: key);

  final String name, image, price, rating;
  final double ratings;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          height: 350,
          child: Container(
            height: 350,
            width: 250,
            decoration: BoxDecoration(
              color: Color(0xFF242d35),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      image,
                      // width: 150,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "$name",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        itemBuilder: (context, _) =>
                            Icon(Icons.star, color: Colors.amber),
                        onRatingUpdate: (index) {},
                        initialRating: ratings,
                        minRating: 1,
                        itemCount: 5,
                        itemSize: 16,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        ignoreGestures: true,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4),
                      ),
                      Text(
                        "$rating",
                        style: TextStyle(color: Colors.white54),
                      ),
                    ],
                  ),
                  Text(
                    "\$$price",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
