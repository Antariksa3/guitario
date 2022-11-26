import 'package:flutter/material.dart';
import 'package:guitario/enums.dart';

import '../../components/custom_bottom_navbar.dart';
import '../profile/components/custom_appbar.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
