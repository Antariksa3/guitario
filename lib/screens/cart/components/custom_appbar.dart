import 'package:flutter/material.dart';

import '../../../db_services/db_item.dart';
import '../../../models/cart_model.dart';

class CustomAppBar extends StatefulWidget {
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  List<CartModel> demoCarts = [];

  Future read() async {
    demoCarts = await GuitarDatabase.instance.readAll();
  }

  // Future deleteData() async {
  //   await GuitarDatabase.instance.delete(demoCarts.id);
  //   setState(() {
  //     checkExist = false;
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    read();
    print('List length : ${demoCarts.length}');
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 105),
              child: Container(
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "${demoCarts.length} items",
                    style: TextStyle(color: Colors.white70, fontSize: 12),
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
