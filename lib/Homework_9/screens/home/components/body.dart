import 'package:flutter/material.dart';
import 'package:module4/Homework_9/components/search_box.dart';
import 'package:module4/Homework_9/screens/home/components/category_list.dart';
import 'package:module4/Homework_9/screens/home/components/discount_card.dart';
import 'package:module4/Homework_9/screens/home/components/item_list.dart';

class BodyMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          CategoryList(),
          ItemList(),
          DiscountCard(),
        ],
      ),
    );
  }
}
