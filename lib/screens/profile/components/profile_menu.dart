import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Color(0xFF242D35),
        ),
        onPressed: press,
        child: Row(
          children: [
            Icon(
              icon,
              color: Color(0xFFFFBC2E),
            ),
            SizedBox(width: 20),
            Expanded(
                child: Text(
              text,
              style: TextStyle(color: Colors.white),
            )),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
