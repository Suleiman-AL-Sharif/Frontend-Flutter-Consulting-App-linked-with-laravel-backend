import 'package:flutter/material.dart';

import '../../models/meal.dart';
import '../meals/widgets/meal_item.dart';

double total = 0;

class FavoritesScreen extends StatelessWidget {
  final List<Meal> _favorites;

  FavoritesScreen(this._favorites);

  @override
  Widget build(BuildContext context) {
    if (_favorites.isEmpty) {
      return const Center(
        child: Text(
          'You have no favorites yet. Start adding some!',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              id: _favorites[index].id,
              title: _favorites[index].title,
              affordability: _favorites[index].affordability,
              complexity: _favorites[index].complexity,
              duration: _favorites[index].duration,
              imageUrl: _favorites[index].imageUrl);
        },
        itemCount: _favorites.length,
      );
    }
  }
}
