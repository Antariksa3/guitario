import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String rating;

  CustomAppBar({required this.rating});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Text(
                    "$rating",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 5),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
