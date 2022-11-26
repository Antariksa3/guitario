import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20),
        ProfileMenu(
          icon: Icons.person_outline_rounded,
          text: 'My Account',
          press: () {},
        ),
        ProfileMenu(
          icon: Icons.notifications_none_rounded,
          text: 'Notifications',
          press: () {},
        ),
        ProfileMenu(
          icon: Icons.settings,
          text: 'Settings',
          press: () {},
        ),
        ProfileMenu(
          icon: Icons.question_mark_rounded,
          text: 'Help Center',
          press: () {},
        ),
        ProfileMenu(
          icon: Icons.logout_rounded,
          text: 'Log Out',
          press: () {
            FirebaseAuth.instance.signOut();
          },
        ),
      ],
    );
  }
}
