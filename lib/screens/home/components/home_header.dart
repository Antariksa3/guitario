import 'package:flutter/material.dart';

import '../../cart/cart_screen.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFF979797).withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: "Search Product",
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => CartScreen()),
              ),
            ),
            borderRadius: BorderRadius.circular(50),
            child: Container(
              padding: EdgeInsets.all(12),
              height: 46,
              width: 46,
              decoration: BoxDecoration(
                color: Color(0xFF979797).withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
