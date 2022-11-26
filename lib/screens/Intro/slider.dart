import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  SliderPage(
      {super.key,
      required this.title,
      required this.description,
      required this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF191e25), Color(0xFF091C38)],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            image,
            width: width * 0.6,
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              description,
              style: TextStyle(
                  color: Colors.white,
                  height: 1.5,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0.7),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
