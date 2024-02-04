import 'package:creative_project/widgets/item_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> ProductName = ["Product 1", "mobile", "labtob"];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: ProductName.length,
        itemBuilder: (
          context,
          index,
        ) {
          return ItemCard(productName: ProductName[index]);
        },
        separatorBuilder: (context, index) {
          return Divider();
        });
  }
}
