import 'package:flutter/material.dart';

import '../enums.dart';
import '../screens/cart/cart_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/profile/profile_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Color(0xFF242d35),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFF242d35).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.storefront_outlined,
                color: MenuState.home == selectedMenu
                    ? Color(0xFFFFBC2E)
                    : inActiveIconColor,
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => HomeScreen()),
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: MenuState.cart == selectedMenu
                    ? Color(0xFFFFBC2E)
                    : inActiveIconColor,
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => CartScreen()),
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.person_outline_rounded,
                color: MenuState.profile == selectedMenu
                    ? Color(0xFFFFBC2E)
                    : inActiveIconColor,
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => ProfileScreen()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
