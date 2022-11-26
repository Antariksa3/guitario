import 'package:flutter/material.dart';

import '../../../db_services/db_item.dart';
import '../../../models/cart_model.dart';
import 'cart_item_card.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<CartModel> demoCarts = [];

  Future read() async {
    demoCarts = await GuitarDatabase.instance.readAll();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    read();
    print('List length : ${demoCarts.length} ');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: ((context, index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
              key: Key(
                demoCarts[index].id.toString(),
              ),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFFFE6E6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Spacer(),
                    Icon(
                      Icons.delete,
                      color: Colors.redAccent,
                    ),
                  ],
                ),
              ),
              onDismissed: ((direction) {
                setState(() {
                  demoCarts.removeAt(index);
                });
              }),
              child: CartItemCard(
                  image: demoCarts[index].images,
                  title: demoCarts[index].title,
                  price: demoCarts[index].price),
            ))),
      ),
    );
  }
}
