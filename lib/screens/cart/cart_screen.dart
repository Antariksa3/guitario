import 'package:flutter/material.dart';

import '../../components/default_button.dart';
import '../cart/components/body.dart';
import 'components/custom_appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(),
      ),
      body: Body(),
      bottomNavigationBar: CheckOutCard(),
    );
  }
}

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      // height: 174,
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
              color: Color(0xFF242d35).withOpacity(0.15)),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFF303C47),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.receipt_long,
                    color: Color(0xFFFFBC2E),
                  ),
                ),
                Spacer(),
                Text(
                  "Add voucher code",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "\$337.15",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 190,
                  child: DefaultButton(
                    text: "Check Out",
                    press: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
