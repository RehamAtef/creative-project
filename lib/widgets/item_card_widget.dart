import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String productName;
  const ItemCard({Key? key, required this.productName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffba8d7c),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.shopify),
            Text(productName),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Text("100\$"),
          ],
        ),
      ),
    );
  }
}
