import 'package:flutter/material.dart';

import '../../models/category.dart';
import 'dummy_data.dart';
import 'widgets/category_item.dart';

final List<Widget> _gridCategories = DUMMY_CATEGORIES.map((Category category) {
  return CategoryItem(category);
}).toList();

class CategoriesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Css();
  }
}

class Css extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 50,
      ),
      itemCount: _gridCategories.length,
      itemBuilder: (context, index) {
        return _gridCategories[index];
      },
    );
  }
}
