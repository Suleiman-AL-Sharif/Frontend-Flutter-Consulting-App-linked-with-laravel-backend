import '../../models/meal.dart';
import '../../models/category.dart';
import '../../screens/meals/widgets/meal_item.dart';

import 'package:flutter/material.dart';
import 'dummy_data.dart';

class MealsScreen extends StatefulWidget {
  static const route = 'meals';

  final List<Meal> availableMeals;

  MealsScreen(this.availableMeals);
  @override
  _MealsScreenState createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  Category category;
  List<Meal> displayedMeals;
  var _loadedInitData = false;

  /*
  TextEditingController _Time1Controller = TextEditingController();
  TextEditingController _Time2Controller = TextEditingController();
  TextEditingController _Time3Controller = TextEditingController();
  TextEditingController _controller = TextEditingController();

  DateTime currentDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2022),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate) {
      setState(() {
        currentDate = pickedDate;
        _controller.text = pickedDate.toString();
        debugPrint(pickedDate.toString());
      });
    }
  }

*/


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_loadedInitData) return;

    category = ModalRoute.of(context).settings.arguments as Category;
    displayedMeals = widget.availableMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    _loadedInitData = true;
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(category.title),
          actions: [
            IconButton(
              onPressed: () {
                // method to show the search bar
                showSearch(
                    context: context,
                    // delegate to customize the search bar
                    delegate: CustomSearchDelegate());
              },
              icon: const Icon(Icons.search),
              color: Colors.white,
            )
          ],
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: displayedMeals[index].id,
              title: displayedMeals[index].title,
              affordability: displayedMeals[index].affordability,
              complexity: displayedMeals[index].complexity,
              duration: displayedMeals[index].duration,
              imageUrl: displayedMeals[index].imageUrl,
            );
          },
          itemCount: displayedMeals.length,
        ),
        );
  }
}

class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  final List<Widget> advertiser = DUMMY_MEALS.map((Meal meal) {
    return MealItem();
  }).toList();

  List<String> searchTerms = [
    "Abdullah ALKabbani ",
    "Sliman Al-Sharif",
    "Tagrid Joha",
    "Ali",
    "Rami",
    "Jamilah",
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
